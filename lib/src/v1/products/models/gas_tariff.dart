import '../../common/models/link.dart';

class GasTariff {
  String? code;
  double? dualFuelDiscountExcVat;
  double? dualFuelDiscountIncVat;
  double? exitFeesExcVat;
  double? exitFeesIncVat;
  String? exitFeesType;
  List<Link>? links;
  double? onlineDiscountExcVat;
  double? onlineDiscountIncVat;
  double? standingChargeExcVat;
  double? standingChargeIncVat;
  double? standardUnitRateExcVat;
  double? standardUnitRateIncVat;

  GasTariff({
    this.code,
    this.dualFuelDiscountExcVat,
    this.dualFuelDiscountIncVat,
    this.exitFeesExcVat,
    this.exitFeesIncVat,
    this.exitFeesType,
    this.links,
    this.onlineDiscountExcVat,
    this.onlineDiscountIncVat,
    this.standingChargeExcVat,
    this.standingChargeIncVat,
    this.standardUnitRateExcVat,
    this.standardUnitRateIncVat,
  });

  factory GasTariff.fromJson(
    Map<String, dynamic> json,
  ) {
    return GasTariff(
      code: json['code'] as String?,
      dualFuelDiscountExcVat:
          (json['dual_fuel_discount_exc_vat'] as num?)?.toDouble(),
      dualFuelDiscountIncVat:
          (json['dual_fuel_discount_inc_vat'] as num?)?.toDouble(),
      exitFeesExcVat: (json['exit_fees_exc_vat'] as num?)?.toDouble(),
      exitFeesIncVat: (json['exit_fees_inc_vat'] as num?)?.toDouble(),
      exitFeesType: json['exit_fees_type'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      onlineDiscountExcVat:
          (json['online_discount_exc_vat'] as num?)?.toDouble(),
      onlineDiscountIncVat:
          (json['online_discount_inc_vat'] as num?)?.toDouble(),
      standingChargeExcVat:
          (json['standing_charge_exc_vat'] as num?)?.toDouble(),
      standingChargeIncVat:
          (json['standing_charge_inc_vat'] as num?)?.toDouble(),
      standardUnitRateExcVat:
          (json['standard_unit_rate_exc_vat'] as num?)?.toDouble(),
      standardUnitRateIncVat:
          (json['standard_unit_rate_inc_vat'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'dual_fuel_discount_exc_vat': dualFuelDiscountExcVat,
      'dual_fuel_discount_inc_vat': dualFuelDiscountIncVat,
      'exit_fees_exc_vat': exitFeesExcVat,
      'exit_fees_inc_vat': exitFeesIncVat,
      'exit_fees_type': exitFeesType,
      'links': links?.map((e) => e.toJson()).toList(),
      'online_discount_exc_vat': onlineDiscountExcVat,
      'online_discount_inc_vat': onlineDiscountIncVat,
      'standing_charge_exc_vat': standingChargeExcVat,
      'standing_charge_inc_vat': standingChargeIncVat,
      'standard_unit_rate_exc_vat': standardUnitRateExcVat,
      'standard_unit_rate_inc_vat': standardUnitRateIncVat,
    };
  }
}
