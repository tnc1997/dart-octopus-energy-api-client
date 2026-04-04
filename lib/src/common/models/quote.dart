class Quote {
  int annualPayment;

  Quote({
    required this.annualPayment,
  });

  factory Quote.fromJson(
    Map<String, dynamic> json,
  ) {
    return Quote(
      annualPayment: (json['annual_payment'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'annual_payment': annualPayment,
    };
  }
}
