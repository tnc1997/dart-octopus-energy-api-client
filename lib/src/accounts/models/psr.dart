class Psr {
  bool? requiresSignup;

  Psr({
    this.requiresSignup,
  });

  factory Psr.fromJson(
    Map<String, dynamic> json,
  ) {
    return Psr(
      requiresSignup: json['requires_signup'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'requires_signup': requiresSignup,
    };
  }
}
