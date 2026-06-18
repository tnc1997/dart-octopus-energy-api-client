import 'agreement.dart';

class AgreementsCreated {
  String? accountNumber;
  List<Agreement>? agreements;

  AgreementsCreated({
    this.accountNumber,
    this.agreements,
  });

  factory AgreementsCreated.fromJson(
    Map<String, dynamic> json,
  ) {
    return AgreementsCreated(
      accountNumber: json['account_number'] as String?,
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => Agreement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'account_number': accountNumber,
      'agreements': agreements?.map((e) => e.toJson()).toList(),
    };
  }
}
