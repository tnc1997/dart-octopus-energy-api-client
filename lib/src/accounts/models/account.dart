import 'property.dart';

class Account {
  String number;
  List<Property>? properties;

  Account({
    required this.number,
    this.properties,
  });

  factory Account.fromJson(
    Map<String, dynamic> json,
  ) {
    return Account(
      number: json['number'] as String,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'properties': properties?.map((e) => e.toJson()).toList(),
    };
  }
}
