abstract class MeterPointMeter {
  String serialNumber;

  MeterPointMeter({
    required this.serialNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'serial_number': serialNumber,
    };
  }
}
