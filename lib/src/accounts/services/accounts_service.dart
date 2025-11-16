import 'package:http/http.dart' as http;

class AccountsService {
  final http.Client _client;

  const AccountsService({
    required http.Client client,
  }) : _client = client;
}
