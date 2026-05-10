import 'bespoke_electricity_unit_rate.dart';

class BespokeTariffRates {
  double? standingCharge;
  double? unitRate;
  List<BespokeElectricityUnitRate>? unitRates;

  BespokeTariffRates({
    this.standingCharge,
    this.unitRate,
    this.unitRates,
  });

  factory BespokeTariffRates.fromJson(
    Map<String, dynamic> json,
  ) {
    return BespokeTariffRates(
      standingCharge: json['standing_charge'] != null
          ? double.parse(json['standing_charge'] as String)
          : null,
      unitRate: json['unit_rate'] != null
          ? double.parse(json['unit_rate'] as String)
          : null,
      unitRates: (json['unit_rates'] as List<dynamic>?)
          ?.map((e) =>
              BespokeElectricityUnitRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'standing_charge': standingCharge?.toString(),
      'unit_rate': unitRate?.toString(),
      'unit_rates': unitRates?.map((e) => e.toJson()).toList(),
    };
  }
}
