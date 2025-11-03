abstract class MeterPoint {
  String serialNumber;

  MeterPoint({
    required this.serialNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'serial_number': serialNumber,
    };
  }
}
