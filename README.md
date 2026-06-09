# Client for Octopus Energy API

A client for accessing the Octopus Energy API.

Please note that Client for Octopus Energy API is unofficial and not endorsed by Octopus Energy.

## Installation

Add this package to your application.

```shell
dart pub add octopus_energy_api_client
```

## Getting Started

Most applications target a single version of the Octopus Energy API. Import that
version's library (for example `v1.dart`) and you have everything you need — the
client, the services, the models, and the helpers — from one import.

```dart
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
```

That is all you need for everyday use. The rest of this document explains how the
package is organized and why — read on if you want to understand the imports or
if you ever need to work with more than one API version at the same time.

## Library Structure and Versioning

The Octopus Energy API is versioned (`/v1/…`, and newer `/v2/…` endpoints are
beginning to appear). A new API version is free to change the **shape** of its
data: a `v2` model called `Order` may have entirely different fields from a `v1`
`Order`, and a service that exists in both versions may behave differently. If the
two versions shared a single set of types, every such change would be a breaking,
tangled mess.

To keep the versions cleanly separated, this package exposes **one importable
library per API version**, plus a small shared library for the pieces that never
change between versions. You choose which version(s) to import, and Dart's
`import ... as` prefixes keep them from colliding.

### Import Entry Points

| Import                                                             | What it contains                                                                                                                                                                                     |
|--------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `package:octopus_energy_api_client/octopus_energy_api_client.dart` | **Shared infrastructure only.** Version-independent plumbing: `clientViaApiKey`, the exception type, and the API host constant. It contains **no models and no client** — those belong to a version. |
| `package:octopus_energy_api_client/v1.dart`                        | **The complete v1 SDK.** The v1 `OctopusEnergyApiClient`, every v1 service, and every v1 model and enum — plus a re-export of the shared infrastructure above, so a single import is enough.         |
| `package:octopus_energy_api_client/v2.dart`                        | **The complete v2 SDK** (planned). The same shape as `v1.dart`, for the v2 API.                                                                                                                      |

Everything under `lib/src/` is private implementation detail; only the libraries
above are part of the public API.

### Using a Single Version

Import the version's library directly and use everything unprefixed, exactly as in
[Getting Started](#getting-started):

```dart
import 'package:octopus_energy_api_client/v1.dart';

final api = OctopusEnergyApiClient(client: clientViaApiKey(apiKey));

final products = await api.products.listProducts();
final product = await api.products.retrieveProduct('VAR-22-11-01');
final meterPoint = await api.electricityMeterPoints.getElectricityMeterPoint('1234567890123');
```

### Using More Than One Version

When you need two API versions in the same file, import each version's library with
a prefix and import the shared infrastructure once, unprefixed:

```dart
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:octopus_energy_api_client/v1.dart' as v1;
import 'package:octopus_energy_api_client/v2.dart' as v2; // illustrative

Future<void> main() async {
  // One authenticated HTTP client, shared by every version's API client.
  final client = clientViaApiKey('sk_live_...');

  final v1Api = v1.OctopusEnergyApiClient(client: client);
  final v2Api = v2.OctopusEnergyApiClient(client: client); // illustrative

  final account = await v1Api.accounts.getAccount('A-1234ABCD');
  final order = await v2Api.orders.getOrder('...'); // illustrative

  client.close();
}
```

The `v1.` / `v2.` prefix is the single mechanism that resolves any name clash
between versions — whether it is the client, a service, or a model. Because the
prefix already carries the version, **the type names themselves are deliberately
not version-suffixed**: it is `v1.OctopusEnergyApiClient` and
`v2.OctopusEnergyApiClient`, not `OctopusEnergyApiV1Client`. This mirrors the
approach used by Google's official [`googleapis`](https://pub.dev/packages/googleapis)
package (e.g. `package:googleapis/calendar/v3.dart` exposes a `CalendarApi`, with
the version in the import path rather than the class name).

Some consequences worth knowing:

- **Each version has its own client.** There is no single object that spans
  versions; you create one `OctopusEnergyApiClient` per version. Pass them the same
  `http.Client` (as above) so authentication and connection pooling are shared.
- **The shared library carries no client.** Importing
  `package:octopus_energy_api_client/octopus_energy_api_client.dart` on its own gives
  you `clientViaApiKey` and the exception type, but not a client — that is
  intentional. Reach for a version library (`v1.dart`) to get a client.
- **`clientViaApiKey` lives in the shared library** and is re-exported by every
  version library, so `clientViaApiKey`, `v1.clientViaApiKey`, and
  `v2.clientViaApiKey` all refer to the same helper.

## Authentication

`clientViaApiKey` returns an `http.Client` that attaches your API key to every
request:

```dart
final client = clientViaApiKey('sk_live_...');
```

You can pass any `http.Client` to `OctopusEnergyApiClient(client: ...)`, so you are
free to wrap or substitute it — for example, to add logging, retries, or a mock
client in tests. Remember to `close()` the HTTP client when you are finished.

## Errors

Unsuccessful responses throw an `OctopusEnergyApiClientException`, which is
available from both the shared library and every version library:

```dart
try {
  await api.accounts.getAccount('A-1234ABCD');
} on OctopusEnergyApiClientException catch (e) {
  print('Request failed: $e');
}
```

## Services (v1)

The v1 `OctopusEnergyApiClient` exposes the following services. Each is created
lazily on first access and reuses the client's `http.Client`.

| Service                  | Accessor                     | Example methods                                                                                               |
|--------------------------|------------------------------|---------------------------------------------------------------------------------------------------------------|
| Accounts                 | `api.accounts`               | `getAccount`, `createAccount`, `renewBusinessTariff`                                                          |
| Electricity meter points | `api.electricityMeterPoints` | `getElectricityMeterPoint`, `listElectricityMeterConsumption`                                                 |
| Gas meter points         | `api.gasMeterPoints`         | `listGasMeterConsumption`                                                                                     |
| Industry                 | `api.industry`               | `listIndustryGridSupplyPoints`                                                                                |
| IVR support              | `api.ivrSupport`             | `minimalTwilioEnqueue`                                                                                        |
| Products                 | `api.products`               | `listProducts`, `retrieveProduct`, `listElectricityTariffStandardUnitRates`, `listGasTariffStandardUnitRates` |
| Quotes                   | `api.quotes`                 | `createQuote`, `shareQuoteViaEmail`                                                                           |
| Voice                    | `api.voice`                  | `twilioEnqueueAudio`                                                                                          |
