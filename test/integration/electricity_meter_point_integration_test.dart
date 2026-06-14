@Tags(['integration'])
library electricity_meter_point_integration_test;

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  final apiKey = Platform.environment['OCTOPUS_ENERGY_API_KEY'];
  final accountNumber = Platform.environment['OCTOPUS_ENERGY_ACCOUNT_NUMBER'];

  http.Client? client;
  OctopusEnergyApiClient? api;
  String? mpan;

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
        final electricityMeterPoints = property.electricityMeterPoints;

        if (electricityMeterPoints != null) {
          for (final electricityMeterPoint in electricityMeterPoints) {
            mpan = electricityMeterPoint.mpan;
          }
        }
      }
    }
  });

  tearDownAll(() {
    client?.close();
  });

  group(
    'ElectricityMeterPointsService',
    () {
      group(
        'getElectricityMeterPoint',
        () {
          test(
            'gets the electricity meter point',
            () async {
              if (mpan == null) {
                markTestSkipped('account has no electricity meter');
                return;
              }

              await api!.electricityMeterPoints.getElectricityMeterPoint(mpan!);
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );
}
