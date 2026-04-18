import 'package:http/http.dart' as http;

class IvrSupportService {
  final http.Client _client;

  const IvrSupportService({
    required http.Client client,
  }) : _client = client;
}
