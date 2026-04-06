import 'package:http/http.dart' as http;

import 'accounts/services/accounts_service.dart';
import 'electricity_meter_points/services/electricity_meter_points_service.dart';

class OctopusEnergyApiClient {
  final http.Client _client;

  AccountsService? _accounts;
  ElectricityMeterPointsService? _electricityMeterPoints;

  OctopusEnergyApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  AccountsService get accounts {
    return _accounts ??= AccountsService(
      client: _client,
    );
  }

  ElectricityMeterPointsService get electricityMeterPoints {
    return _electricityMeterPoints ??= ElectricityMeterPointsService(
      client: _client,
    );
  }
}
