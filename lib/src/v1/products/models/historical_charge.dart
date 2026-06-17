class HistoricalCharge {
  String? paymentMethod;
  DateTime? validFrom;
  DateTime? validTo;
  double valueExcVat;
  double valueIncVat;

  HistoricalCharge({
    this.paymentMethod,
    this.validFrom,
    this.validTo,
    required this.valueExcVat,
    required this.valueIncVat,
  });

  factory HistoricalCharge.fromJson(
    Map<String, dynamic> json,
  ) {
    return HistoricalCharge(
      paymentMethod: json['payment_method'] as String?,
      validFrom: json['valid_from']?.isNotEmpty == true
          ? DateTime.parse(json['valid_from'] as String)
          : null,
      validTo: json['valid_to']?.isNotEmpty == true
          ? DateTime.parse(json['valid_to'] as String)
          : null,
      valueExcVat: (json['value_exc_vat'] as num).toDouble(),
      valueIncVat: (json['value_inc_vat'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_method': paymentMethod,
      'valid_from': validFrom?.toIso8601String(),
      'valid_to': validTo?.toIso8601String(),
      'value_exc_vat': valueExcVat,
      'value_inc_vat': valueIncVat,
    };
  }
}
