class SampleQuotes {
  /// Annual cost (inc or exc)
  Map<String, double> dualFuelDualRate;

  /// Annual cost (inc or exc)
  Map<String, double> dualFuelSingleRate;

  /// Annual cost (inc or exc)
  Map<String, double> electricityDualRate;

  /// Annual cost (inc or exc)
  Map<String, double> electricitySingleRate;

  SampleQuotes({
    required this.dualFuelDualRate,
    required this.dualFuelSingleRate,
    required this.electricityDualRate,
    required this.electricitySingleRate,
  });

  factory SampleQuotes.fromJson(
    Map<String, dynamic> json,
  ) {
    return SampleQuotes(
      dualFuelDualRate: (json['dual_fuel_dual_rate'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
      dualFuelSingleRate:
          (json['dual_fuel_single_rate'] as Map<String, dynamic>)
              .map((k, e) => MapEntry(k, (e as num).toDouble())),
      electricityDualRate:
          (json['electricity_dual_rate'] as Map<String, dynamic>)
              .map((k, e) => MapEntry(k, (e as num).toDouble())),
      electricitySingleRate:
          (json['electricity_single_rate'] as Map<String, dynamic>)
              .map((k, e) => MapEntry(k, (e as num).toDouble())),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dual_fuel_dual_rate': dualFuelDualRate,
      'dual_fuel_single_rate': dualFuelSingleRate,
      'electricity_dual_rate': electricityDualRate,
      'electricity_single_rate': electricitySingleRate,
    };
  }
}
