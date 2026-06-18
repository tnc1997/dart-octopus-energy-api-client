class Emails {
  /// An array of one or more email addresses to send the email to.
  List<String> emails;

  String? referralCode;

  String? smartProduct;

  Emails({
    required this.emails,
    this.referralCode,
    this.smartProduct,
  });

  factory Emails.fromJson(
    Map<String, dynamic> json,
  ) {
    return Emails(
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
      referralCode: json['referral_code'] as String?,
      smartProduct: json['smart_product'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emails': emails,
      'referral_code': referralCode,
      'smart_product': smartProduct,
    };
  }
}
