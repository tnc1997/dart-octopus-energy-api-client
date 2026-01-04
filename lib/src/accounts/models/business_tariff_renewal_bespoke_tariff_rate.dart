import 'business_tariff_renewal_bespoke_register_rate.dart';

class BusinessTariffRenewalBespokeTariffRate {
  String meterSerialNumber;
  List<BusinessTariffRenewalBespokeRegisterRate>? registers;
  String standingCharge;
  String? unitRate;

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
      standingCharge: json['standing_charge'] as String,
      unitRate: json['unit_rate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meter_serial_number': meterSerialNumber,
      'registers': registers!.map((e) => e.toJson()).toList(),
      'standing_charge': standingCharge,
      'unit_rate': unitRate,
    };
  }
}
