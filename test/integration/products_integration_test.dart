@Tags(['integration'])
library products_integration_test;

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  final apiKey = Platform.environment['OCTOPUS_ENERGY_API_KEY'];
  final accountNumber = Platform.environment['OCTOPUS_ENERGY_ACCOUNT_NUMBER'];

  http.Client? client;
  OctopusEnergyApiClient? api;
  String? apiProductCode;
  String? accountProductCode;

  setUpAll(() async {
    if (apiKey == null) {
      return;
    }

    client = clientViaApiKey(apiKey);

    api = OctopusEnergyApiClient(client: client);

    final products = await api!.products.listProducts();

    if (products.results.isNotEmpty) {
      apiProductCode = products.results.first.code;
    }

    if (accountNumber == null) {
      return;
    }

    final account = await api!.accounts.getAccount(accountNumber);

    final properties = account.properties;

    if (properties != null) {
      for (final property in properties) {
        final electricityMeterPoints = property.electricityMeterPoints;

        if (electricityMeterPoints != null) {
          for (final electricityMeterPoint in electricityMeterPoints) {
            final agreements = electricityMeterPoint.agreements;

            if (agreements != null) {
              for (final agreement in agreements) {
                accountProductCode = RegExp(r'^[EG]-\d+R-(.+)-[A-Z]$')
                    .firstMatch(agreement.tariffCode)
                    ?.group(1);
              }
            }
          }
        }
      }
    }
  });

  tearDownAll(() {
    client?.close();
  });

  group(
    'ProductsService',
    () {
      group(
        'listProducts',
        () {
          test(
            'lists the products',
            () async {
              await api!.products.listProducts();
            },
            skip: apiKey == null,
          );
        },
      );

      group(
        'retrieveProduct',
        () {
          test(
            'retrieves the product',
            () async {
              if (apiProductCode == null) {
                markTestSkipped('api has no products');
                return;
              }

              await api!.products.retrieveProduct(apiProductCode!);
            },
            skip: apiKey == null,
          );

          test(
            'retrieves the product for the account',
            () async {
              if (accountProductCode == null) {
                markTestSkipped('account has no agreements');
                return;
              }

              await api!.products.retrieveProduct(accountProductCode!);
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );
}
