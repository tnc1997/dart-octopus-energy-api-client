class Emails {
  /// An array of one or more email addresses to send the email to.
  List<String> emails;

  Emails({
    required this.emails,
  });

  factory Emails.fromJson(
    Map<String, dynamic> json,
  ) {
    return Emails(
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emails': emails,
    };
  }
}
