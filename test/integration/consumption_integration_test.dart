@Tags(['integration'])
library consumption_integration_test;

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
  String? electricityMeterSerialNumber;
  String? mprn;
  String? gasMeterSerialNumber;

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

            final meters = electricityMeterPoint.meters;

            if (meters != null) {
              for (final meter in meters) {
                electricityMeterSerialNumber = meter.serialNumber;
              }
            }
          }
        }

        final gasMeterPoints = property.gasMeterPoints;

        if (gasMeterPoints != null) {
          for (final gasMeterPoint in gasMeterPoints) {
            mprn = gasMeterPoint.mprn;

            final meters = gasMeterPoint.meters;

            if (meters != null) {
              for (final meter in meters) {
                gasMeterSerialNumber = meter.serialNumber;
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
    'ElectricityMeterPointsService',
    () {
      group(
        'listElectricityMeterConsumption',
        () {
          test(
            'lists the electricity meter consumption',
            () async {
              if (mpan == null || electricityMeterSerialNumber == null) {
                markTestSkipped('account has no electricity meter');
                return;
              }

              await api!.electricityMeterPoints.listElectricityMeterConsumption(
                mpan!,
                electricityMeterSerialNumber!,
              );
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );

  group(
    'GasMeterPointsService',
    () {
      group(
        'listGasMeterConsumption',
        () {
          test(
            'lists the gas meter consumption',
            () async {
              if (mprn == null || gasMeterSerialNumber == null) {
                markTestSkipped('account has no gas meter');
                return;
              }

              await api!.gasMeterPoints.listGasMeterConsumption(
                mprn!,
                gasMeterSerialNumber!,
              );
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );
}
