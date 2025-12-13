class BillingOptions {
  int? periodLength;
  int? periodStartDay;
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
