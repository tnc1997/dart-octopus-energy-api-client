import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../../common/models/create.dart';
import '../models/quote_created.dart';

class QuotesService {
  final http.Client _client;

  const QuotesService({
    required http.Client client,
  }) : _client = client;

  /// At least one electricity or gas meter-point must be included. A maximum of one electricity and one gas meter-point can be included at this time. For all meter-points, at least one of gsp or postcode must be included. All meter-points must be based in the UK, excluding Northern Ireland. All meter-points must belong to the same gsp or postcode. WARNING: This endpoint is only available to partner organisations.
  Future<QuoteCreated> createQuote(
    Create create,
  ) async {
    final response = await _client.post(
      Uri.https(
        authority,
        '/v1/quotes/',
      ),
      headers: {
        'content-type': 'application/json',
      },
      body: json.encode(create.toJson()),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return QuoteCreated.fromJson(json.decode(response.body));
  }
}
