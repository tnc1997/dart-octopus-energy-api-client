import 'package:http/http.dart' as http;

class IndustryService {
  final http.Client _client;

  const IndustryService({
    required http.Client client,
  }) : _client = client;
}
