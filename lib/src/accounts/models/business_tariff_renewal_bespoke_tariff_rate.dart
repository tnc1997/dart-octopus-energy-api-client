import '../../common/utils/decimal_utils.dart';
import 'business_tariff_renewal_bespoke_register_rate.dart';

class BusinessTariffRenewalBespokeTariffRate {
  String meterSerialNumber;
  List<BusinessTariffRenewalBespokeRegisterRate>? registers;
  double standingCharge;
  double? unitRate;

  BusinessTariffRenewalBespokeTariffRate({
    required this.meterSerialNumber,
    this.registers,
    required this.standingCharge,
    this.unitRate,
  });

  factory BusinessTariffRenewalBespokeTariffRate.fromJson(
    Map<String, dynamic> json,
  ) {
    return BusinessTariffRenewalBespokeTariffRate(
      meterSerialNumber: json['meter_serial_number'] as String,
      registers: (json['registers'] as List<dynamic>?)
          ?.map((e) => BusinessTariffRenewalBespokeRegisterRate.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      standingCharge: double.parse(json['standing_charge'] as String),
      unitRate: json['unit_rate'] != null
          ? double.parse(json['unit_rate'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meter_serial_number': meterSerialNumber,
      'registers': registers?.map((e) => e.toJson()).toList(),
      'standing_charge': standingCharge.toString(),
      'unit_rate': unitRate?.toString(),
    };
  }
}
