import '../enums/bespoke_payment_method.dart';
import 'bespoke_electricity_unit_rate.dart';

class BespokePpsTariffRates {
  BespokePaymentMethod paymentMethod;
  double? standingCharge;
  double? unitRate;
  List<BespokeElectricityUnitRate>? unitRates;

  BespokePpsTariffRates({
    required this.paymentMethod,
    this.standingCharge,
    this.unitRate,
    this.unitRates,
  });

  factory BespokePpsTariffRates.fromJson(
    Map<String, dynamic> json,
  ) {
    return BespokePpsTariffRates(
      paymentMethod:
          BespokePaymentMethod.fromJson(json['payment_method'] as String),
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
      'payment_method': paymentMethod.toJson(),
      'standing_charge': standingCharge?.toString(),
      'unit_rate': unitRate?.toString(),
      'unit_rates': unitRates?.map((e) => e.toJson()).toList(),
    };
  }
}
