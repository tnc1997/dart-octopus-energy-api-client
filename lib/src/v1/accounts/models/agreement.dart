class Agreement {
  /// MPRN or MPAN of the meter point getting a new agreement.
  String mpxn;

  /// Tariff code for the new agreements.
  String tariffCode;

  /// Date (inclusive) the new agreement is valid from.
  DateTime? validFromDate;

  /// Date (exclusive) the new agreement is valid to.
  DateTime? validToDate;

  Agreement({
    required this.mpxn,
    required this.tariffCode,
    required this.validFromDate,
    this.validFromDate,
    this.validToDate,
  });

  factory Agreement.fromJson(
    Map<String, dynamic> json,
  ) {
    return Agreement(
      mpxn: json['mpxn'] as String,
      tariffCode: json['tariff_code'] as String,
      validFromDate: DateTime.parse(json['valid_from_date'] as String),
      validToDate: json['valid_to_date'] != null
      validFromDate: json['valid_from_date']?.isNotEmpty == true
          ? DateTime.parse(json['valid_from_date'] as String)
          : null,
      validToDate: json['valid_to_date']?.isNotEmpty == true
          ? DateTime.parse(json['valid_to_date'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mpxn': mpxn,
      'tariff_code': tariffCode,
      'valid_from_date': validFromDate?.toIso8601String(),
      'valid_to_date': validToDate?.toIso8601String(),
    };
  }
}
