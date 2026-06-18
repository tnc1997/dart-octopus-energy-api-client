/// The default is 'CREDIT', which represents any kind of traditional credit
/// meter or smart meter. This field is mandatory for traditional prepay meters,
/// for which the value 'PREPAYMENT' should be used.
enum MeterType {
  credit,
  prepayment;

  factory MeterType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'CREDIT':
        return MeterType.credit;
      case 'PREPAYMENT':
        return MeterType.prepayment;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case MeterType.credit:
        return 'CREDIT';
      case MeterType.prepayment:
        return 'PREPAYMENT';
    }
  }
}
