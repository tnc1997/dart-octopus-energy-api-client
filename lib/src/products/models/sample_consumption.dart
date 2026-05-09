class SampleConsumption {
  Map<String, double> dualFuelDualRate;
  Map<String, double> dualFuelSingleRate;
  Map<String, double> electricityDualRate;
  Map<String, double> electricitySingleRate;

  SampleConsumption({
    required this.dualFuelDualRate,
    required this.dualFuelSingleRate,
    required this.electricityDualRate,
    required this.electricitySingleRate,
  });

  factory SampleConsumption.fromJson(
    Map<String, dynamic> json,
  ) {
    return SampleConsumption(
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
