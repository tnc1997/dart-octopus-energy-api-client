import '../enums/bespoke_payment_method.dart';
import '../enums/bespoke_rate_type.dart';

class BespokeElectricityUnitRate {
  /// The payment method for the rate.
  BespokePaymentMethod? paymentMethod;

  /// The rate type of the unit rate.
  ///
  /// If the register_identifier is not provided, the rate type must be provided
  /// instead.
  BespokeRateType? rateType;

  /// The value in pence per kWh of the charge (excluding VAT).
  double unitRate;

  BespokeElectricityUnitRate({
    this.paymentMethod,
    this.rateType,
    required this.unitRate,
  });

  factory BespokeElectricityUnitRate.fromJson(
    Map<String, dynamic> json,
  ) {
    return BespokeElectricityUnitRate(
      paymentMethod: json['payment_method'] != null
          ? BespokePaymentMethod.fromJson(json['payment_method'] as String)
          : null,
      rateType: json['rate_type'] != null
          ? BespokeRateType.fromJson(json['rate_type'] as String)
          : null,
      unitRate: double.parse(json['unit_rate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_method': paymentMethod?.toJson(),
      'rate_type': rateType?.toJson(),
      'unit_rate': unitRate.toString(),
    };
  }
}
