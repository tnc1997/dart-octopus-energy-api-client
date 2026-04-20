import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';

class IvrSupportService {
  final http.Client _client;

  const IvrSupportService({
    required http.Client client,
  }) : _client = client;

  /// Enqueue a call from Twilio with the fewest steps. Designed to point phone numbers at when Studio is unavailable. May also be useful to mitigate other types of incident. Performs the minimal amount of work to enqueue a call, storing a record of it. As such, non-essential work is omitted.
  Future<void> minimalTwilioEnqueue() async {
    final response = await _client.post(
      Uri.https(
        authority,
        '/v1/ivr-support/minimal-enqueue-for-incidents/',
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);
  }
}
