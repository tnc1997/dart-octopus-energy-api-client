import '../../common/enums/bespoke_payment_method.dart';
import '../../common/enums/bespoke_rate_type.dart';

class BusinessTariffRenewalBespokeRegisterRate {
  BespokePaymentMethod? paymentMethod;
  BespokeRateType? rateType;
  String? registerIdentifier;
  double unitRate;

  BusinessTariffRenewalBespokeRegisterRate({
    this.paymentMethod,
    this.rateType,
    this.registerIdentifier,
    required this.unitRate,
  });

  factory BusinessTariffRenewalBespokeRegisterRate.fromJson(
      Map<String, dynamic> json) {
    return BusinessTariffRenewalBespokeRegisterRate(
      paymentMethod: json['payment_method'] != null
          ? BespokePaymentMethod.fromJson(json['payment_method'] as String)
          : null,
      rateType: json['rate_type'] != null
          ? BespokeRateType.fromJson(json['rate_type'] as String)
          : null,
      registerIdentifier: json['register_identifier'] as String?,
      unitRate: double.parse(json['unit_rate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_method': paymentMethod?.toJson(),
      'rate_type': rateType?.toJson(),
      'register_identifier': registerIdentifier,
      'unit_rate': unitRate.toString(),
    };
  }
}
