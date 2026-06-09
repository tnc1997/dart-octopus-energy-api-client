enum SmartMeterInterest {
  smets2InterestInterested,
  smets2InterestNotAtTheMoment,
  smets2InterestNotInterested,
  smets2InterestPriority;

  factory SmartMeterInterest.fromJson(
    String json,
  ) {
    switch (json) {
      case 'SMETS2_INTEREST_INTERESTED':
        return SmartMeterInterest.smets2InterestInterested;
      case 'SMETS2_INTEREST_NOT_AT_THE_MOMENT':
        return SmartMeterInterest.smets2InterestNotAtTheMoment;
      case 'SMETS2_INTEREST_NOT_INTERESTED':
        return SmartMeterInterest.smets2InterestNotInterested;
      case 'SMETS2_INTEREST_PRIORITY':
        return SmartMeterInterest.smets2InterestPriority;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case SmartMeterInterest.smets2InterestInterested:
        return 'SMETS2_INTEREST_INTERESTED';
      case SmartMeterInterest.smets2InterestNotAtTheMoment:
        return 'SMETS2_INTEREST_NOT_AT_THE_MOMENT';
      case SmartMeterInterest.smets2InterestNotInterested:
        return 'SMETS2_INTEREST_NOT_INTERESTED';
      case SmartMeterInterest.smets2InterestPriority:
        return 'SMETS2_INTEREST_PRIORITY';
    }
  }
}
