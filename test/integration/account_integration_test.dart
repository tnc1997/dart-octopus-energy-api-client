@Tags(['integration'])
library account_integration_test;

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  final apiKey = Platform.environment['OCTOPUS_ENERGY_API_KEY'];
  final accountNumber = Platform.environment['OCTOPUS_ENERGY_ACCOUNT_NUMBER'];

  http.Client? client;
  OctopusEnergyApiClient? api;

  setUpAll(() {
    if (apiKey == null || accountNumber == null) {
      return;
    }

    client = clientViaApiKey(apiKey);

    api = OctopusEnergyApiClient(client: client);
  });

  tearDownAll(() {
    client?.close();
  });

  group(
    'AccountsService',
    () {
      group(
        'getAccount',
        () {
          test(
            'gets the account',
            () async {
              await api!.accounts.getAccount(accountNumber!);
            },
            skip: apiKey == null || accountNumber == null,
          );
        },
      );
    },
  );
}
