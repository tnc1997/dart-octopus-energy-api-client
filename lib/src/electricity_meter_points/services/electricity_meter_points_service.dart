import 'package:http/http.dart' as http;

class ElectricityMeterPointsService {
  final http.Client _client;

  const ElectricityMeterPointsService({
    required http.Client client,
  }) : _client = client;
}
