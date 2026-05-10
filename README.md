# Client for Octopus Energy API

A client for accessing the Octopus Energy API.

Please note that Client for Octopus Energy API is unofficial and not endorsed by Octopus Energy.

## Getting Started

1. Add this package to your application.

   ```shell
   dart pub add octopus_energy_api_client
   ```

1. Create a variable to store your API key.

   ```dart
   final apiKey = 'sk_test_abc';
   ```

1. Obtain an HTTP client using your API key.

   ```dart
   final client = clientViaApiKey(apiKey);
   ```

1. Create an API client using the HTTP client.

   ```dart
   final api = OctopusEnergyApiClient(client: client);
   ```

1. Fetch data from the Octopus Energy API using the API client.

   ```dart
   final result = await api.accounts.getAccount('1234567890');
   ```
