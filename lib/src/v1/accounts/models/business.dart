import '../enums/business_type.dart';
import 'proprietor.dart';

class Business {
  /// The estimated annual turnover
  ///
  /// In pounds £ (GBP)
  int? annualTurnover;

  BusinessType businessType;

  /// ID used by the Credit Reference Agency to identify business.
  ///
  /// Required for unlimited liability companies (e.g. 'SOLE_TRADER',
  /// 'PARTNERSHIP', 'CHARITY').
  String? creditReferenceId;

  /// The head count of the business, i.e. number of staff.
  int? headCount;

  /// Whether the business is exempt from paying CCL (Climate Change Levy).
  bool isCclExempt;

  /// Whether the business is exempt from paying VAT.
  bool isVatExempt;

  /// The name of the business.
  String name;

  /// The registered number of the business.
  ///
  /// This field is required for 'LIMITED' businesses.
  String? number;

  /// Main phone number for the business.
  String? phoneNumber;

  /// Details of a business owner.
  ///
  /// Required for credit checking unlimited liability businesses.
  Proprietor? proprietor;

  Business({
    this.annualTurnover,
    required this.businessType,
    this.creditReferenceId,
    this.headCount,
    required this.isCclExempt,
    required this.isVatExempt,
    required this.name,
    this.number,
    this.phoneNumber,
    this.proprietor,
  });

  factory Business.fromJson(
    Map<String, dynamic> json,
  ) {
    return Business(
      annualTurnover: (json['annual_turnover'] as num?)?.toInt(),
      businessType: BusinessType.fromJson(json['business_type']),
      creditReferenceId: json['credit_reference_id'] as String?,
      headCount: (json['head_count'] as num?)?.toInt(),
      isCclExempt: json['is_ccl_exempt'] as bool,
      isVatExempt: json['is_vat_exempt'] as bool,
      name: json['name'] as String,
      number: json['number'] as String?,
      phoneNumber: json['phone_number'] as String?,
      proprietor: json['proprietor'] != null
          ? Proprietor.fromJson(json['proprietor'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'annual_turnover': annualTurnover,
      'business_type': businessType.toJson(),
      'credit_reference_id': creditReferenceId,
      'head_count': headCount,
      'is_ccl_exempt': isCclExempt,
      'is_vat_exempt': isVatExempt,
      'name': name,
      'number': number,
      'phone_number': phoneNumber,
      'proprietor': proprietor?.toJson(),
    };
  }
}
