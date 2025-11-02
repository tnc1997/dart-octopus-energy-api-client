import 'package:http/http.dart' as http;

class OctopusEnergyApiClient {
  final http.Client _client;

  OctopusEnergyApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();
}
