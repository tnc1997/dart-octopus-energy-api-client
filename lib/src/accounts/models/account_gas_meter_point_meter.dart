import 'account_meter_point_meter.dart';

class AccountGasMeterPointMeter extends AccountMeterPointMeter {
  AccountGasMeterPointMeter({
    required String serialNumber,
  }) : super(
          serialNumber: serialNumber,
        );

  factory AccountGasMeterPointMeter.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountGasMeterPointMeter(
      serialNumber: json['serial_number'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'serial_number': serialNumber,
    };
  }
}
