class Psr {
  /// If true, indicates that the user should be signed up to the PSR but the
  /// categories are unknown. Therefore the user requires contacting to
  /// determine the categories.
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
