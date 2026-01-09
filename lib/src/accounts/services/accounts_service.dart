import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../models/account.dart';
import '../models/agreements_created.dart';
import '../models/business_tariff_renewal.dart';
import '../models/create.dart';
import '../models/success_response.dart';

class AccountsService {
  final http.Client _client;

  const AccountsService({
    required http.Client client,
  }) : _client = client;

  /// WARNING: This endpoint is only available to partner organisations.
  Future<SuccessResponse> createAccount(
    Create create,
  ) async {
    final response = await _client.post(
      Uri.https(
        authority,
        '/v1/accounts/',
      ),
      headers: {
        'content-type': 'application/json',
      },
      body: json.encode(create.toJson()),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return SuccessResponse.fromJson(json.decode(response.body));
  }

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

  /// This end-point allows a new agreement to be created for an existing
  /// account. It is restricted to business accounts.
  /// WARNING: This endpoint is only available to partner organisations.
  Future<AgreementsCreated> renewBusinessTariff(
    String accountNumber,
    BusinessTariffRenewal renewal,
  ) async {
    final response = await _client.post(
      Uri.https(
        authority,
        '/v1/accounts/$accountNumber/tariff-renewal/',
      ),
      headers: {
        'content-type': 'application/json',
      },
      body: json.encode(renewal.toJson()),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return AgreementsCreated.fromJson(json.decode(response.body));
  }
}
