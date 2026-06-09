abstract class AccountMeterPointMeter {
  String serialNumber;

  AccountMeterPointMeter({
    required this.serialNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'serial_number': serialNumber,
    };
  }
}
