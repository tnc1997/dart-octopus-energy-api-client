import '../enums/business_type.dart';

class Business {
  int? annualTurnover;
  BusinessType businessType;
  int? headCount;
  bool isCclExempt;
  bool isVatExempt;
  String name;
  String? number;

  Business({
    this.annualTurnover,
    required this.businessType,
    this.headCount,
    required this.isCclExempt,
    required this.isVatExempt,
    required this.name,
    this.number,
  });

  factory Business.fromJson(
    Map<String, dynamic> json,
  ) {
    return Business(
      annualTurnover: (json['annual_turnover'] as num?)?.toInt(),
      businessType: BusinessType.fromJson(json['business_type']),
      headCount: (json['head_count'] as num?)?.toInt(),
      isCclExempt: json['is_ccl_exempt'] as bool,
      isVatExempt: json['is_vat_exempt'] as bool,
      name: json['name'] as String,
      number: json['number'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'annual_turnover': annualTurnover,
      'business_type': businessType.toJson(),
      'head_count': headCount,
      'is_ccl_exempt': isCclExempt,
      'is_vat_exempt': isVatExempt,
      'name': name,
      'number': number,
    };
  }
}
