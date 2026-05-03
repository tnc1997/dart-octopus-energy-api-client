import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../models/paginated_historical_charge_list.dart';
import '../models/paginated_products_list.dart';
import '../models/product.dart';

class ProductsService {
  final http.Client _client;

  const ProductsService({
    required http.Client client,
  }) : _client = client;

  Future<PaginatedHistoricalChargeList> listElectricityTariffDayUnitRates(
    String productCode,
    String tariffCode, {
    int? page,
    int? pageSize,
    DateTime? periodFrom,
    DateTime? periodTo,
  }) {
    return _listTariffUnitRates(
      '/v1/products/$productCode/electricity-tariffs/$tariffCode/day-unit-rates/',
      page: page,
      pageSize: pageSize,
      periodFrom: periodFrom,
      periodTo: periodTo,
    );
  }

  Future<PaginatedHistoricalChargeList> listElectricityTariffNightUnitRates(
    String productCode,
    String tariffCode, {
    int? page,
    int? pageSize,
    DateTime? periodFrom,
    DateTime? periodTo,
  }) {
    return _listTariffUnitRates(
      '/v1/products/$productCode/electricity-tariffs/$tariffCode/night-unit-rates/',
      page: page,
      pageSize: pageSize,
      periodFrom: periodFrom,
      periodTo: periodTo,
    );
  }

  Future<PaginatedHistoricalChargeList> listElectricityTariffStandardUnitRates(
    String productCode,
    String tariffCode, {
    int? page,
    int? pageSize,
    DateTime? periodFrom,
    DateTime? periodTo,
  }) {
    return _listTariffUnitRates(
      '/v1/products/$productCode/electricity-tariffs/$tariffCode/standard-unit-rates/',
      page: page,
      pageSize: pageSize,
      periodFrom: periodFrom,
      periodTo: periodTo,
    );
  }

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
          if (availableAt != null)
            'available_at': availableAt.toIso8601String(),
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

  /// Retrieve the details of a product (including all its tariffs) for a particular point in time.
  Future<Product> retrieveProduct(
    String productCode, {
    DateTime? tariffsActiveAt,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/products/$productCode/',
        {
          if (tariffsActiveAt != null)
            'tariffs_active_at': tariffsActiveAt.toIso8601String(),
        },
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return Product.fromJson(json.decode(response.body));
  }

  Future<PaginatedHistoricalChargeList> _listTariffUnitRates(
    String path, {
    int? page,
    int? pageSize,
    DateTime? periodFrom,
    DateTime? periodTo,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        path,
        {
          if (page != null) 'page': page.toString(),
          if (pageSize != null) 'page_size': pageSize.toString(),
          if (periodFrom != null) 'period_from': periodFrom.toIso8601String(),
          if (periodTo != null) 'period_to': periodTo.toIso8601String(),
        },
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return PaginatedHistoricalChargeList.fromJson(json.decode(response.body));
  }
}
