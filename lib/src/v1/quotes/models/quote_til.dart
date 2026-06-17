class QuoteTil {
  String? additionals;
  double? annualStandingCharge;
  double? assumedAnnualConsumption;
  double? assumedAnnualConsumptionDay;
  double? assumedAnnualConsumptionNight;
  double? assumedAnnualConsumptionOffPeak;
  double? estimatedAnnualCost;
  double? exitFees;
  String? paymentMethod;
  DateTime? priceGuaranteedUntil;
  double? standingCharge;
  String? supplier;
  String? tariffCode;
  String? tariffEndsOn;
  String? tariffName;
  String? tariffType;
  double? tcr;
  double? unitRate;
  double? unitRateDay;
  double? unitRateNight;

  QuoteTil({
    this.additionals,
    this.annualStandingCharge,
    this.assumedAnnualConsumption,
    this.assumedAnnualConsumptionDay,
    this.assumedAnnualConsumptionNight,
    this.assumedAnnualConsumptionOffPeak,
    this.estimatedAnnualCost,
    this.exitFees,
    this.paymentMethod,
    this.priceGuaranteedUntil,
    this.standingCharge,
    this.supplier,
    this.tariffCode,
    this.tariffEndsOn,
    this.tariffName,
    this.tariffType,
    this.tcr,
    this.unitRate,
    this.unitRateDay,
    this.unitRateNight,
  });

  factory QuoteTil.fromJson(
    Map<String, dynamic> json,
  ) {
    return QuoteTil(
      additionals: json['additionals'] as String?,
      annualStandingCharge:
          (json['annual_standing_charge'] as num?)?.toDouble(),
      assumedAnnualConsumption:
          (json['assumed_annual_consumption'] as num?)?.toDouble(),
      assumedAnnualConsumptionDay:
          (json['assumed_annual_consumption_day'] as num?)?.toDouble(),
      assumedAnnualConsumptionNight:
          (json['assumed_annual_consumption_night'] as num?)?.toDouble(),
      assumedAnnualConsumptionOffPeak:
          (json['assumed_annual_consumption_off_peak'] as num?)?.toDouble(),
      estimatedAnnualCost: (json['estimated_annual_cost'] as num?)?.toDouble(),
      exitFees: (json['exit_fees'] as num?)?.toDouble(),
      paymentMethod: json['payment_method'] as String?,
      priceGuaranteedUntil: json['price_guaranteed_until']?.isNotEmpty == true
          ? DateTime.parse(json['price_guaranteed_until'] as String)
          : null,
      standingCharge: (json['standing_charge'] as num?)?.toDouble(),
      supplier: json['supplier'] as String?,
      tariffCode: json['tariff_code'] as String?,
      tariffEndsOn: json['tariff_ends_on'] as String?,
      tariffName: json['tariff_name'] as String?,
      tariffType: json['tariff_type'] as String?,
      tcr: (json['tcr'] as num?)?.toDouble(),
      unitRate: (json['unit_rate'] as num?)?.toDouble(),
      unitRateDay: (json['unit_rate_day'] as num?)?.toDouble(),
      unitRateNight: (json['unit_rate_night'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'additionals': additionals,
      'annual_standing_charge': annualStandingCharge,
      'assumed_annual_consumption': assumedAnnualConsumption,
      'assumed_annual_consumption_day': assumedAnnualConsumptionDay,
      'assumed_annual_consumption_night': assumedAnnualConsumptionNight,
      'assumed_annual_consumption_off_peak': assumedAnnualConsumptionOffPeak,
      'estimated_annual_cost': estimatedAnnualCost,
      'exit_fees': exitFees,
      'payment_method': paymentMethod,
      'price_guaranteed_until': priceGuaranteedUntil?.toIso8601String(),
      'standing_charge': standingCharge,
      'supplier': supplier,
      'tariff_code': tariffCode,
      'tariff_ends_on': tariffEndsOn,
      'tariff_name': tariffName,
      'tariff_type': tariffType,
      'tcr': tcr,
      'unit_rate': unitRate,
      'unit_rate_day': unitRateDay,
      'unit_rate_night': unitRateNight,
    };
  }
}
