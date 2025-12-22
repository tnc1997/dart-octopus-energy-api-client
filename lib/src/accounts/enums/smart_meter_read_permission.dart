enum SmartMeterReadPermission {
  daily,
  halfHourly,
  monthly;

  factory SmartMeterReadPermission.fromJson(
    String json,
  ) {
    switch (json) {
      case 'DAILY':
        return SmartMeterReadPermission.daily;
      case 'HALF_HOURLY':
        return SmartMeterReadPermission.halfHourly;
      case 'MONTHLY':
        return SmartMeterReadPermission.monthly;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case SmartMeterReadPermission.daily:
        return 'DAILY';
      case SmartMeterReadPermission.halfHourly:
        return 'HALF_HOURLY';
      case SmartMeterReadPermission.monthly:
        return 'MONTHLY';
    }
  }
}
