import 'dart:io';

import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';

Future<void> main() async {
  final client = clientViaApiKey(
    Platform.environment['API_KEY']!,
  );

  final api = OctopusEnergyApiClient(
    client: client,
  );

  final result = await api.accounts.getAccount(
    Platform.environment['ACCOUNT_NUMBER']!,
  );

  client.close();
}
