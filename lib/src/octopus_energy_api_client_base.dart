import 'package:http/http.dart' as http;

import 'accounts/services/accounts_service.dart';
import 'electricity_meter_points/services/electricity_meter_points_service.dart';
import 'gas_meter_points/services/gas_meter_points_service.dart';
import 'industry/services/industry_service.dart';
import 'ivr_support/services/ivr_support_service.dart';
import 'products/services/products_service.dart';

class OctopusEnergyApiClient {
  final http.Client _client;

  AccountsService? _accounts;
  ElectricityMeterPointsService? _electricityMeterPoints;
  GasMeterPointsService? _gasMeterPoints;
  IndustryService? _industry;
  IvrSupportService? _ivrSupport;
  ProductsService? _products;

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

  GasMeterPointsService get gasMeterPoints {
    return _gasMeterPoints ??= GasMeterPointsService(
      client: _client,
    );
  }

  IndustryService get industry {
    return _industry ??= IndustryService(
      client: _client,
    );
  }

  IvrSupportService get ivrSupport {
    return _ivrSupport ??= IvrSupportService(
      client: _client,
    );
  }

  ProductsService get products {
    return _products ??= ProductsService(
      client: _client,
    );
  }
}
