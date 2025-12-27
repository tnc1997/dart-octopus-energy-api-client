import 'password_reset.dart';

class SuccessResponse {
  String number;
  PasswordReset? passwordReset;

  SuccessResponse({
    required this.number,
    this.passwordReset,
  });

  factory SuccessResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return SuccessResponse(
      number: json['number'] as String,
      passwordReset: json['password_reset'] != null
          ? PasswordReset.fromJson(
              json['password_reset'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'password_reset': passwordReset?.toJson(),
    };
  }
}
