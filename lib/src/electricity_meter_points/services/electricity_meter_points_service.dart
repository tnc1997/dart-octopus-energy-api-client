import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
import '../../common/models/paginated_consumption_list.dart';
import '../models/electricity_meter_point.dart';

class ElectricityMeterPointsService {
  final http.Client _client;

  const ElectricityMeterPointsService({
    required http.Client client,
  }) : _client = client;

  /// Retrieve the details of a meter-point. This endpoint can be used to get the GSP of a given meter-point.
  Future<ElectricityMeterPoint> getElectricityMeterPoint(
    String mpan,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/electricity-meter-points/$mpan/',
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return ElectricityMeterPoint.fromJson(json.decode(response.body));
  }

  /// Return a list of consumption values (in kWh) for half-hour periods for a given meter-point and meter. WARNING: Half-hourly consumption data is only available for smart meters. Requests for consumption data for non-smart meters will return an empty response payload.
  Future<PaginatedConsumptionList> listElectricityMeterConsumption(
    String mpan,
    String serialNumber, {
    String? groupBy,
    String? orderBy,
    int? page,
    int? pageSize,
    DateTime? periodFrom,
    DateTime? periodTo,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/v1/electricity-meter-points/$mpan/meters/$serialNumber/consumption/',
        {
          if (groupBy != null) 'group_by': groupBy,
          if (orderBy != null) 'order_by': orderBy,
          if (page != null) 'page': page.toString(),
          if (pageSize != null) 'page_size': pageSize.toString(),
          if (periodFrom != null) 'period_from': periodFrom.toIso8601String(),
          if (periodTo != null) 'period_to': periodTo.toIso8601String(),
        },
      ),
    );

    OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

    return PaginatedConsumptionList.fromJson(json.decode(response.body));
  }
}
