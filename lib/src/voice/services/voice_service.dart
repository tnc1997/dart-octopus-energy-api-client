import 'package:http/http.dart' as http;

class VoiceService {
  final http.Client _client;

  const VoiceService({
    required http.Client client,
  }) : _client = client;
}
