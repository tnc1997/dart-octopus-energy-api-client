@Tags(['integration'])
library industry_integration_test;

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  final apiKey = Platform.environment['OCTOPUS_ENERGY_API_KEY'];
  final accountNumber = Platform.environment['OCTOPUS_ENERGY_ACCOUNT_NUMBER'];

  http.Client? client;
  OctopusEnergyApiClient? api;
  String? postcode;

  setUpAll(() async {
    if (apiKey == null || accountNumber == null) {
      return;
    }

    client = clientViaApiKey(apiKey);

    api = OctopusEnergyApiClient(client: client);

    final account = await api!.accounts.getAccount(accountNumber);

    final properties = account.properties;

    if (properties != null) {
      for (final property in properties) {
        if (property.postcode != null) {
          postcode = property.postcode;
        }
      }
    }
  });

  tearDownAll(() {
    client?.close();
  });

  group(
    'IndustryService',
    () {
      group(
        'listIndustryGridSupplyPoints',
        () {
          test(
            'lists the industry grid supply points',
            () async {
              if (postcode == null) {
                markTestSkipped('account has no postcode');
                return;
              }

              await api!.industry.listIndustryGridSupplyPoints(
                postcode: postcode,
              );
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );
}
