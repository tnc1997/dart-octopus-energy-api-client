import 'account_meter_point_meter.dart';
import 'account_register.dart';

class AccountElectricityMeterPointMeter extends AccountMeterPointMeter {
  List<AccountRegister>? registers;

  AccountElectricityMeterPointMeter({
    this.registers,
    required String serialNumber,
  }) : super(
          serialNumber: serialNumber,
        );

  factory AccountElectricityMeterPointMeter.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountElectricityMeterPointMeter(
      registers: (json['registers'] as List<dynamic>?)
          ?.map((e) => AccountRegister.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: json['serial_number'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'registers': registers?.map((e) => e.toJson()).toList(),
      'serial_number': serialNumber,
    };
  }
}
