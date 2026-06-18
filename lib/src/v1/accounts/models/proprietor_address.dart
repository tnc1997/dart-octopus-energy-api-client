class ProprietorAddress {
  /// First line of address.
  String line1;

  /// Second line of address.
  String? line2;

  /// Third line of address.
  String? line3;

  /// Fourth line of address.
  String? line4;

  /// Fifth line of address.
  String? line5;

  /// Postcode of the address.
  String postcode;

  ProprietorAddress({
    required this.line1,
    this.line2,
    this.line3,
    this.line4,
    this.line5,
    required this.postcode,
  });

  factory ProprietorAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProprietorAddress(
      line1: json['line_1'] as String,
      line2: json['line_2'] as String?,
      line3: json['line_3'] as String?,
      line4: json['line_4'] as String?,
      line5: json['line_5'] as String?,
      postcode: json['postcode'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'line_1': line1,
      'line_2': line2,
      'line_3': line3,
      'line_4': line4,
      'line_5': line5,
      'postcode': postcode,
    };
  }
}
