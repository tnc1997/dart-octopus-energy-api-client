import 'credit_score_data.dart';
import 'psr.dart';

class User {
  CreditScoreData? creditScoreData;

  DateTime? dateOfBirth;

  /// Cannot already be in use for an existing account.
  String email;

  String familyName;

  String givenName;

  String? label;

  String? landline;

  String? mobile;

  bool optedInForMarketing;

  bool? optedInToThirdParties;

  /// Priority Services Register details for the user
  Psr? psr;

  String? title;

  User({
    this.creditScoreData,
    this.dateOfBirth,
    required this.email,
    required this.familyName,
    required this.givenName,
    this.label,
    this.landline,
    this.mobile,
    required this.optedInForMarketing,
    this.optedInToThirdParties,
    this.psr,
    this.title,
  });

  factory User.fromJson(
    Map<String, dynamic> json,
  ) {
    return User(
      creditScoreData: json['credit_score_data'] != null
          ? CreditScoreData.fromJson(
              json['credit_score_data'] as Map<String, dynamic>)
          : null,
      dateOfBirth: json['date_of_birth'] != null
          ? DateTime.parse(json['date_of_birth'] as String)
          : null,
      email: json['email'] as String,
      familyName: json['family_name'] as String,
      givenName: json['given_name'] as String,
      label: json['label'] as String?,
      landline: json['landline'] as String?,
      mobile: json['mobile'] as String?,
      optedInForMarketing: json['opted_in_for_marketing'] as bool,
      optedInToThirdParties: json['opted_in_to_third_parties'] as bool?,
      psr: json['psr'] != null
          ? Psr.fromJson(json['psr'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'credit_score_data': creditScoreData?.toJson(),
      'date_of_birth': dateOfBirth?.toIso8601String(),
      'email': email,
      'family_name': familyName,
      'given_name': givenName,
      'label': label,
      'landline': landline,
      'mobile': mobile,
      'opted_in_for_marketing': optedInForMarketing,
      'opted_in_to_third_parties': optedInToThirdParties,
      'psr': psr?.toJson(),
      'title': title,
    };
  }
}
