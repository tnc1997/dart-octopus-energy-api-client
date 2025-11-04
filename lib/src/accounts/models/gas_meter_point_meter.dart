import 'meter_point_meter.dart';

class GasMeterPointMeter extends MeterPointMeter {
  GasMeterPointMeter({
    required String serialNumber,
  }) : super(
          serialNumber: serialNumber,
        );

  factory GasMeterPointMeter.fromJson(
    Map<String, dynamic> json,
  ) {
    return GasMeterPointMeter(
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
