import 'quote_til.dart';

class QuoteProduct {
  double? annualAmount;
  String? code;
  String? description;
  String? displayName;
  QuoteTil? electricityTil;
  String? fullName;
  QuoteTil? gasTil;
  int id;
  double? monthlyAmount;

  QuoteProduct({
    this.annualAmount,
    this.code,
    this.description,
    this.displayName,
    this.electricityTil,
    this.fullName,
    this.gasTil,
    required this.id,
    this.monthlyAmount,
  });

  factory QuoteProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuoteProduct(
      annualAmount: (json['annual_amount'] as num?)?.toDouble(),
      code: json['code'] as String?,
      description: json['description'] as String?,
      displayName: json['display_name'] as String?,
      electricityTil: json['electricity_til'] != null
          ? QuoteTil.fromJson(json['electricity_til'] as Map<String, dynamic>)
          : null,
      fullName: json['full_name'] as String?,
      gasTil: json['gas_til'] != null
          ? QuoteTil.fromJson(json['gas_til'] as Map<String, dynamic>)
          : null,
      id: (json['id'] as num).toInt(),
      monthlyAmount: (json['monthly_amount'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'annual_amount': annualAmount,
      'code': code,
      'description': description,
      'display_name': displayName,
      'electricity_til': electricityTil?.toJson(),
      'full_name': fullName,
      'gas_til': gasTil?.toJson(),
      'id': id,
      'monthly_amount': monthlyAmount,
    };
  }
}
