enum PaymentMethod {
  /// POROB Direct Debit Schedule.
  billTriggeredDirectDebit,

  /// Monthly Direct Debit.
  monthlyDirectDebit,

  /// POROB schedule, payment initiated by the customer.
  monthlyDirectPayment;

  factory PaymentMethod.fromJson(
    String json,
  ) {
    switch (json) {
      case 'BILL_TRIGGERED_DIRECT_DEBIT':
        return PaymentMethod.billTriggeredDirectDebit;
      case 'MONTHLY_DIRECT_DEBIT':
        return PaymentMethod.monthlyDirectDebit;
      case 'MONTHLY_DIRECT_PAYMENT':
        return PaymentMethod.monthlyDirectPayment;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case PaymentMethod.billTriggeredDirectDebit:
        return 'BILL_TRIGGERED_DIRECT_DEBIT';
      case PaymentMethod.monthlyDirectDebit:
        return 'MONTHLY_DIRECT_DEBIT';
      case PaymentMethod.monthlyDirectPayment:
        return 'MONTHLY_DIRECT_PAYMENT';
    }
  }
}
