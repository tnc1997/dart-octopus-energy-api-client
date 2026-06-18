import 'proprietor_address.dart';

class Proprietor {
  /// Main address of a business owner (only required for non limited
  /// companies).
  ProprietorAddress? address;

  /// Date of birth of the business owner (only required for non limited
  /// companies).
  DateTime? dateOfBirth;

  /// Email address from a business owner.
  String emailAddress;

  /// First name of the business owner.
  String firstName;

  /// Last name of the business owner.
  String lastName;

  /// Phone number of a business owner.
  String? phoneNumber;

  Proprietor({
    this.address,
    this.dateOfBirth,
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
  });

  factory Proprietor.fromJson(
    Map<String, dynamic> json,
  ) {
    return Proprietor(
      address: json['address'] != null
          ? ProprietorAddress.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      dateOfBirth: json['date_of_birth']?.isNotEmpty == true
          ? DateTime.parse(json['date_of_birth'] as String)
          : null,
      emailAddress: json['email_address'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address?.toJson(),
      'date_of_birth': dateOfBirth?.toIso8601String(),
      'email_address': emailAddress,
      'first_name': firstName,
      'last_name': lastName,
      'phone_number': phoneNumber,
    };
  }
}
