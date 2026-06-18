/// The occupier’s interest in installing a smart meter.
enum SmartMeterInterest {
  /// Interested.
  smets2InterestInterested,

  /// No interest at the moment, ask again later.
  smets2InterestNotAtTheMoment,

  /// Not Interested.
  smets2InterestNotInterested,

  /// Priority.
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
