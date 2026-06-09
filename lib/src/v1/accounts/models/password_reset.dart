class PasswordReset {
  String token;
  String userId;

  PasswordReset({
    required this.token,
    required this.userId,
  });

  factory PasswordReset.fromJson(
    Map<String, dynamic> json,
  ) {
    return PasswordReset(
      token: json['token'] as String,
      userId: json['user_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user_id': userId,
    };
  }
}
