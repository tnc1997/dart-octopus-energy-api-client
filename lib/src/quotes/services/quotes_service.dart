import 'package:http/http.dart' as http;

class QuotesService {
  final http.Client _client;

  const QuotesService({
    required http.Client client,
  }) : _client = client;
}
