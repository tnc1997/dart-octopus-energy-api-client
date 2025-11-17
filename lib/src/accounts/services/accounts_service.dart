import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../models/account.dart';

class AccountsService {
  final http.Client _client;

  const AccountsService({
    required http.Client client,
  }) : _client = client;

  /// Retrieve the details of an account.
  Future<Account> getAccount(
    String accountNumber,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/accounts/$accountNumber/',
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return Account.fromJson(json.decode(response.body));
  }
}
