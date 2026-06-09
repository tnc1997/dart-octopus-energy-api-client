class BillingOptions {
  /// The length of the billing period in months.
  int? periodLength;

  /// The day of the month for the billing period start.
  int? periodStartDay;

  /// The month for the billing period start, for quarterly billing.
  int? periodStartMonth;

  BillingOptions({
    this.periodLength,
    this.periodStartDay,
    this.periodStartMonth,
  });

  factory BillingOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    return BillingOptions(
      periodLength: (json['period_length'] as num?)?.toInt(),
      periodStartDay: (json['period_start_day'] as num?)?.toInt(),
      periodStartMonth: (json['period_start_month'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'period_length': periodLength,
      'period_start_day': periodStartDay,
      'period_start_month': periodStartMonth,
    };
  }
}
