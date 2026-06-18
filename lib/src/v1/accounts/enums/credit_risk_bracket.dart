enum CreditRiskBracket {
  /// High.
  high,

  /// Low.
  low,

  /// Medium.
  mid,

  /// Unknown.
  unknown;

  factory CreditRiskBracket.fromJson(
    String json,
  ) {
    switch (json) {
      case 'HIGH':
        return CreditRiskBracket.high;
      case 'LOW':
        return CreditRiskBracket.low;
      case 'MID':
        return CreditRiskBracket.mid;
      case 'UNKNOWN':
        return CreditRiskBracket.unknown;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case CreditRiskBracket.high:
        return 'HIGH';
      case CreditRiskBracket.low:
        return 'LOW';
      case CreditRiskBracket.mid:
        return 'MID';
      case CreditRiskBracket.unknown:
        return 'UNKNOWN';
    }
  }
}
