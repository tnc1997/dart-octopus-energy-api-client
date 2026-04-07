import 'package:http/http.dart' as http;

class GasMeterPointsService {
  final http.Client _client;

  const GasMeterPointsService({
    required http.Client client,
  }) : _client = client;
}
