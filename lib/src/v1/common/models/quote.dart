class Quote {
  /// The estimated annual payment for this meter-point based on consumption.
  ///
  /// This value must be provided in pence. For business quotes, the price is
  /// exclusive of VAT, while for non-business quotes, it should be inclusive of
  /// VAT.
  int? annualPayment;

  Quote({
    this.annualPayment,
  });

  factory Quote.fromJson(
    Map<String, dynamic> json,
  ) {
    return Quote(
      annualPayment: (json['annual_payment'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'annual_payment': annualPayment,
    };
  }
}
