import '../../common/models/link.dart';

class Eco7ElectricityTariff {
  String code;
  double? dayUnitRateExcVat;
  double? dayUnitRateIncVat;
  double dualFuelDiscountExcVat;
  double dualFuelDiscountIncVat;
  double exitFeesExcVat;
  double exitFeesIncVat;
  String exitFeesType;
  List<Link> links;
  double? nightUnitRateExcVat;
  double? nightUnitRateIncVat;
  double onlineDiscountExcVat;
  double onlineDiscountIncVat;
  double? standingChargeExcVat;
  double? standingChargeIncVat;

  Eco7ElectricityTariff({
    required this.code,
    this.dayUnitRateExcVat,
    this.dayUnitRateIncVat,
    required this.dualFuelDiscountExcVat,
    required this.dualFuelDiscountIncVat,
    required this.exitFeesExcVat,
    required this.exitFeesIncVat,
    required this.exitFeesType,
    required this.links,
    this.nightUnitRateExcVat,
    this.nightUnitRateIncVat,
    required this.onlineDiscountExcVat,
    required this.onlineDiscountIncVat,
    this.standingChargeExcVat,
    this.standingChargeIncVat,
  });

  factory Eco7ElectricityTariff.fromJson(
    Map<String, dynamic> json,
  ) {
    return Eco7ElectricityTariff(
      code: json['code'] as String,
      dayUnitRateExcVat: (json['day_unit_rate_exc_vat'] as num?)?.toDouble(),
      dayUnitRateIncVat: (json['day_unit_rate_inc_vat'] as num?)?.toDouble(),
      dualFuelDiscountExcVat:
          (json['dual_fuel_discount_exc_vat'] as num).toDouble(),
      dualFuelDiscountIncVat:
          (json['dual_fuel_discount_inc_vat'] as num).toDouble(),
      exitFeesExcVat: (json['exit_fees_exc_vat'] as num).toDouble(),
      exitFeesIncVat: (json['exit_fees_inc_vat'] as num).toDouble(),
      exitFeesType: json['exit_fees_type'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nightUnitRateExcVat:
          (json['night_unit_rate_exc_vat'] as num?)?.toDouble(),
      nightUnitRateIncVat:
          (json['night_unit_rate_inc_vat'] as num?)?.toDouble(),
      onlineDiscountExcVat: (json['online_discount_exc_vat'] as num).toDouble(),
      onlineDiscountIncVat: (json['online_discount_inc_vat'] as num).toDouble(),
      standingChargeExcVat:
          (json['standing_charge_exc_vat'] as num?)?.toDouble(),
      standingChargeIncVat:
          (json['standing_charge_inc_vat'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'day_unit_rate_exc_vat': dayUnitRateExcVat,
      'day_unit_rate_inc_vat': dayUnitRateIncVat,
      'dual_fuel_discount_exc_vat': dualFuelDiscountExcVat,
      'dual_fuel_discount_inc_vat': dualFuelDiscountIncVat,
      'exit_fees_exc_vat': exitFeesExcVat,
      'exit_fees_inc_vat': exitFeesIncVat,
      'exit_fees_type': exitFeesType,
      'links': links.map((e) => e.toJson()).toList(),
      'night_unit_rate_exc_vat': nightUnitRateExcVat,
      'night_unit_rate_inc_vat': nightUnitRateIncVat,
      'online_discount_exc_vat': onlineDiscountExcVat,
      'online_discount_inc_vat': onlineDiscountIncVat,
      'standing_charge_exc_vat': standingChargeExcVat,
      'standing_charge_inc_vat': standingChargeIncVat,
    };
  }
}
