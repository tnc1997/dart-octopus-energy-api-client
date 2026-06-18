/// The payment method for the rate.
enum BespokePaymentMethod {
  /// Direct Debit.
  dd,

  /// Non-Direct Debit.
  ndd,

  /// Prepayment.
  pp;

  factory BespokePaymentMethod.fromJson(
    String json,
  ) {
    switch (json) {
      case 'DD':
        return BespokePaymentMethod.dd;
      case 'NDD':
        return BespokePaymentMethod.ndd;
      case 'PP':
        return BespokePaymentMethod.pp;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case BespokePaymentMethod.dd:
        return 'DD';
      case BespokePaymentMethod.ndd:
        return 'NDD';
      case BespokePaymentMethod.pp:
        return 'PP';
    }
  }
}
