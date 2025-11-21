class Address {
  String addressLine1;
  String? addressLine2;
  String? addressLine3;
  String? county;
  String? deliveryPointIdentifier;
  String postcode;
  String? town;

  Address({
    required this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.county,
    this.deliveryPointIdentifier,
    required this.postcode,
    this.town,
  });

  factory Address.fromJson(
    Map<String, dynamic> json,
  ) {
    return Address(
      addressLine1: json['address_line_1'] as String,
      addressLine2: json['address_line_2'] as String?,
      addressLine3: json['address_line_3'] as String?,
      county: json['county'] as String?,
      deliveryPointIdentifier: json['delivery_point_identifier'] as String?,
      postcode: json['postcode'] as String,
      town: json['town'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address_line_1': addressLine1,
      'address_line_2': addressLine2,
      'address_line_3': addressLine3,
      'county': county,
      'delivery_point_identifier': deliveryPointIdentifier,
      'postcode': postcode,
      'town': town,
    };
  }
}
