class AccountRegister {
  String identifier;
  bool? isSettlementRegister;
  String? rate;

  AccountRegister({
    required this.identifier,
    this.isSettlementRegister,
    this.rate,
  });

  factory AccountRegister.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountRegister(
      identifier: json['identifier'] as String,
      isSettlementRegister: json['is_settlement_register'] as bool?,
      rate: json['rate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'is_settlement_register': isSettlementRegister,
      'rate': rate,
    };
  }
}
