import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../models/paginated_products_list.dart';

class ProductsService {
  final http.Client _client;

  const ProductsService({
    required http.Client client,
  }) : _client = client;

  /// Return a list of energy products. By default, results will be public energy products but if the authenticated organisations will also see products available to their organisation.
  Future<PaginatedProductsList> listProducts({
    DateTime? availableAt,
    String? brand,
    bool? isBusiness,
    bool? isGreen,
    bool? isHistorical,
    bool? isPrepay,
    bool? isTracker,
    bool? isVariable,
    int? page,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/products/',
        {
          if (availableAt != null) 'available_at': availableAt.toIso8601String(),
          if (brand != null) 'brand': brand,
          if (isBusiness != null) 'is_business': isBusiness.toString(),
          if (isGreen != null) 'is_green': isGreen.toString(),
          if (isHistorical != null) 'is_historical': isHistorical.toString(),
          if (isPrepay != null) 'is_prepay': isPrepay.toString(),
          if (isTracker != null) 'is_tracker': isTracker.toString(),
          if (isVariable != null) 'is_variable': isVariable.toString(),
          if (page != null) 'page': page.toString(),
        },
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return PaginatedProductsList.fromJson(json.decode(response.body));
  }
}
