import 'account.dart';
import 'meter_point_meter.dart';

class ElectricityMeterPointMeter extends MeterPointMeter {
  List<Register>? registers;

  ElectricityMeterPointMeter({
    this.registers,
    required String serialNumber,
  }) : super(
          serialNumber: serialNumber,
        );

  factory ElectricityMeterPointMeter.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElectricityMeterPointMeter(
      registers: (json['registers'] as List<dynamic>?)
          ?.map((e) => Register.fromJson(e as Map<String, dynamic>))
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
