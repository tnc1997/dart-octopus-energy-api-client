class Register {
  String id;
  bool? isSettlementRegister;
  String? rate;

  Register({
    required this.id,
    this.isSettlementRegister,
    this.rate,
  });

  factory Register.fromJson(
    Map<String, dynamic> json,
  ) {
    return Register(
      id: json['identifier'] as String,
      isSettlementRegister: json['is_settlement_register'] as bool?,
      rate: json['rate'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': id,
      'is_settlement_register': isSettlementRegister,
      'rate': rate,
    };
  }
}
