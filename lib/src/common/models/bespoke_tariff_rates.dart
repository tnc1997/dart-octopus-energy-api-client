import 'bespoke_electricity_unit_rate.dart';

class BespokeTariffRates {
  /// The value in pence per day of the charge (excluding VAT).
  double? standingCharge;

  /// The value in pence per kWh of the charge (excluding VAT).
  ///
  /// This field should be used for gas meters.
  double? unitRate;

  /// List of the value in pence per kWh of the charges (excluding VAT).
  ///
  /// For elec meters, the unit rates are provided on a per register basis in
  /// this array.
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
