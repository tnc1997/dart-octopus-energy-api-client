class Agreement {
  String? mpxn;
  String? tariffCode;
  DateTime? validFrom;
  DateTime? validTo;

  Agreement({
    this.mpxn,
    this.tariffCode,
    this.validFrom,
    this.validTo,
  });

  factory Agreement.fromJson(
    Map<String, dynamic> json,
  ) {
    return Agreement(
      mpxn: json['mpxn'] as String?,
      tariffCode: json['tariff_code'] as String,
      validFrom: json['valid_from'] != null
          ? DateTime.parse(json['valid_from'] as String)
          : json['valid_from_date'] != null
              ? DateTime.parse(json['valid_from_date'] as String)
              : null,
      validTo: json['valid_to'] != null
          ? DateTime.parse(json['valid_to'] as String)
          : json['valid_to_date'] != null
              ? DateTime.parse(json['valid_to_date'] as String)
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mpxn': mpxn,
      'tariff_code': tariffCode,
      'valid_from': validFrom?.toIso8601String(),
      'valid_from_date': validFrom?.toIso8601String(),
      'valid_to': validTo?.toIso8601String(),
      'valid_to_date': validTo?.toIso8601String(),
    };
  }
}
