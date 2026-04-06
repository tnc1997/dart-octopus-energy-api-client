import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/octopus_energy_api_client_exception.dart';
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
}
