// ignore_for_file: unused_local_variable

import 'package:octopus_energy_api_client/v1.dart';

Future<void> main() async {
  // Your Octopus Energy API key.
  final apiKey = 'sk_live_...';

  // Obtain an HTTP client that authenticates every request with your API key.
  final client = clientViaApiKey(apiKey);

  // Create the API client for the v1 API.
  final api = OctopusEnergyApiClient(client: client);

  // Call an endpoint.
  final account = await api.accounts.getAccount('A-1234ABCD');

  // Release the underlying HTTP resources when you are done.
  client.close();
}
