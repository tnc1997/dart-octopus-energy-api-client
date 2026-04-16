import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../models/paginated_grid_supply_point_list.dart';

class IndustryService {
  final http.Client _client;

  const IndustryService({
    required http.Client client,
  }) : _client = client;

  /// Return a list of GSP objects, optionally filtered by postcode. If we’re unable to map the passed postcode to a GSP, an empty list will be returned.
  Future<PaginatedGridSupplyPointList> listIndustryGridSupplyPoints({
    int? page,
    String? postcode,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/industry/grid-supply-points/',
        {
          if (page != null) 'page': page.toString(),
          if (postcode != null) 'postcode': postcode,
        },
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return PaginatedGridSupplyPointList.fromJson(json.decode(response.body));
  }
}
