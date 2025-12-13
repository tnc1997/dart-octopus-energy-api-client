import 'bespoke_electricity_unit_rate.dart';

class BespokeTariffRates {
  String? standingCharge;
  String? unitRate;
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
      standingCharge: json['standing_charge'] as String?,
      unitRate: json['unit_rate'] as String?,
      unitRates: (json['unit_rates'] as List<dynamic>?)
          ?.map((e) =>
              BespokeElectricityUnitRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'standing_charge': standingCharge,
      'unit_rate': unitRate,
      'unit_rates': unitRates?.map((e) => e.toJson()).toList(),
    };
  }
}
