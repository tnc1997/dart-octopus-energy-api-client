class AccountAgreement {
  String tariffCode;
  DateTime validFrom;
  DateTime? validTo;

  AccountAgreement({
    required this.tariffCode,
    required this.validFrom,
    this.validTo,
  });

  factory AccountAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountAgreement(
      tariffCode: json['tariff_code'] as String,
      validFrom: DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] != null
          ? DateTime.parse(json['valid_to'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tariff_code': tariffCode,
      'valid_from': validFrom.toIso8601String(),
      'valid_to': validTo?.toIso8601String(),
    };
  }
}
