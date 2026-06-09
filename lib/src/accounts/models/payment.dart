import '../enums/payment_method.dart';

class Payment {
  /// The name associated with the bank account.
  String? accountName;

  /// The bank account number.
  String? accountNumber;

  /// The bank account sort code.
  String? accountSortCode;

  /// The number of days to delay the payment for a bill triggered schedule.
  int? delayDays;

  PaymentMethod method;

  /// The preferred day of the month for the payment request.
  ///
  /// Only required for 'MONTHLY_DIRECT_DEBIT' schedules.
  int? paymentDay;

  Payment({
    this.accountName,
    this.accountNumber,
    this.accountSortCode,
    this.delayDays,
    required this.method,
    this.paymentDay,
  });

  factory Payment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Payment(
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
      accountSortCode: json['account_sort_code'] as String?,
      delayDays: (json['delay_days'] as num?)?.toInt(),
      method: PaymentMethod.fromJson(json['method'] as String),
      paymentDay: (json['payment_day'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'account_name': accountName,
      'account_number': accountNumber,
      'account_sort_code': accountSortCode,
      'delay_days': delayDays,
      'method': method.toJson(),
      'payment_day': paymentDay,
    };
  }
}
