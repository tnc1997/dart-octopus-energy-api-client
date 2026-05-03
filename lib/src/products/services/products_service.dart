import 'package:http/http.dart' as http;

class ProductsService {
  final http.Client _client;

  const ProductsService({
    required http.Client client,
  }) : _client = client;
}
