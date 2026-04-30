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
      dualFuelDualRate: (json['dualFuelDualRate'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
      dualFuelSingleRate: (json['dualFuelSingleRate'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
      electricityDualRate: (json['electricityDualRate'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
      electricitySingleRate:
          (json['electricitySingleRate'] as Map<String, dynamic>)
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
