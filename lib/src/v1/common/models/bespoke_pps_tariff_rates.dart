import '../enums/bespoke_payment_method.dart';
import 'bespoke_electricity_unit_rate.dart';

class BespokePpsTariffRates {
  /// The payment method for the rate.
  BespokePaymentMethod? paymentMethod;

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

  BespokePpsTariffRates({
    this.paymentMethod,
    this.standingCharge,
    this.unitRate,
    this.unitRates,
  });

  factory BespokePpsTariffRates.fromJson(
    Map<String, dynamic> json,
  ) {
    return BespokePpsTariffRates(
      paymentMethod: json['payment_method'] != null
          ? BespokePaymentMethod.fromJson(json['payment_method'] as String)
          : null,
      standingCharge: json['standing_charge'] is num
          ? (json['standing_charge'] as num).toDouble()
          : (json['standing_charge'] as String?)?.isNotEmpty == true
              ? double.parse(json['standing_charge'] as String)
              : null,
      unitRate: json['unit_rate'] is num
          ? (json['unit_rate'] as num).toDouble()
          : (json['unit_rate'] as String?)?.isNotEmpty == true
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
      'payment_method': paymentMethod?.toJson(),
      'standing_charge': standingCharge?.toString(),
      'unit_rate': unitRate?.toString(),
      'unit_rates': unitRates?.map((e) => e.toJson()).toList(),
    };
  }
}
