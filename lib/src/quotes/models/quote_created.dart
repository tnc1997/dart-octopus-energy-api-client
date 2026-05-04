import 'quote_product.dart';

class QuoteCreated {
  String code;
  String gsp;
  List<QuoteProduct> products;

  QuoteCreated({
    required this.code,
    required this.gsp,
    required this.products,
  });

  factory QuoteCreated.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuoteCreated(
      code: json['code'] as String,
      gsp: json['gsp'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => QuoteProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'gsp': gsp,
      'products': products.map((e) => e.toJson()).toList(),
    };
  }
}
