import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';

class VoiceService {
  final http.Client _client;

  const VoiceService({
    required http.Client client,
  }) : _client = client;

  Future<void> twilioEnqueueAudio() async {
    final response = await _client.post(
      Uri.https(
        authority,
        '/v1/voice/twilio/enqueue-audio/',
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);
  }
}
