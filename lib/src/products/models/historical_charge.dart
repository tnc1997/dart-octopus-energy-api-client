class HistoricalCharge {
  String paymentMethod;
  DateTime validFrom;
  DateTime validTo;
  double valueExcVat;
  double valueIncVat;

  HistoricalCharge({
    required this.paymentMethod,
    required this.validFrom,
    required this.validTo,
    required this.valueExcVat,
    required this.valueIncVat,
  });

  factory HistoricalCharge.fromJson(
    Map<String, dynamic> json,
  ) {
    return HistoricalCharge(
      paymentMethod: json['payment_method'] as String,
      validFrom: DateTime.parse(json['valid_from'] as String),
      validTo: DateTime.parse(json['valid_to'] as String),
      valueExcVat: (json['value_exc_vat'] as num).toDouble(),
      valueIncVat: (json['value_inc_vat'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_method': paymentMethod,
      'valid_from': validFrom.toIso8601String(),
      'valid_to': validTo.toIso8601String(),
      'value_exc_vat': valueExcVat,
      'value_inc_vat': valueIncVat,
    };
  }
}
