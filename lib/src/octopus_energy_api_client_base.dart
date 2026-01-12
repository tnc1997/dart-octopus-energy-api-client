import 'package:http/http.dart' as http;

import 'accounts/services/accounts_service.dart';

class OctopusEnergyApiClient {
  final http.Client _client;

  AccountsService? _accounts;

  OctopusEnergyApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  AccountsService get accounts {
    return _accounts ??= AccountsService(
      client: _client,
    );
  }
}
