class Deposit {
  int? amount;
  String? key;
  String? reason;

  Deposit({
    this.amount,
    this.key,
    this.reason,
  });

  factory Deposit.fromJson(
    Map<String, dynamic> json,
  ) {
    return Deposit(
      amount: (json['amount'] as num?)?.toInt(),
      key: json['key'] as String?,
      reason: json['reason'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'key': key,
      'reason': reason,
    };
  }
}
