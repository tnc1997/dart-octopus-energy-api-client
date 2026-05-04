class Emails {
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
