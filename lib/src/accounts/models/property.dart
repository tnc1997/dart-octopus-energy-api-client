import 'electricity_meter_point.dart';
import 'gas_meter_point.dart';

class Property {
  String? addressLine1;
  String? addressLine2;
  String? addressLine3;
  String? county;
  List<ElectricityMeterPoint>? electricityMeterPoints;
  List<GasMeterPoint>? gasMeterPoints;
  int id;
  DateTime movedInAt;
  DateTime? movedOutAt;
  String? postcode;
  String? town;

  Property({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.county,
    this.electricityMeterPoints,
    this.gasMeterPoints,
    required this.id,
    required this.movedInAt,
    this.movedOutAt,
    this.postcode,
    this.town,
  });

  factory Property.fromJson(
    Map<String, dynamic> json,
  ) {
    return Property(
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      addressLine3: json['address_line_3'] as String?,
      county: json['county'] as String?,
      electricityMeterPoints: (json['electricity_meter_points']
              as List<dynamic>?)
          ?.map(
              (e) => ElectricityMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasMeterPoints: (json['gas_meter_points'] as List<dynamic>?)
          ?.map((e) => GasMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      movedInAt: DateTime.parse(json['moved_in_at'] as String),
      movedOutAt: json['moved_out_at'] != null
          ? DateTime.parse(json['moved_out_at'] as String)
          : null,
      postcode: json['postcode'] as String?,
      town: json['town'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address_line_1': addressLine1,
      'address_line_2': addressLine2,
      'address_line_3': addressLine3,
      'county': county,
      'electricity_meter_points':
          electricityMeterPoints?.map((e) => e.toJson()).toList(),
      'gas_meter_points': gasMeterPoints?.map((e) => e.toJson()).toList(),
      'id': id,
      'moved_in_at': movedInAt.toIso8601String(),
      'moved_out_at': movedOutAt?.toIso8601String(),
      'postcode': postcode,
      'town': town,
    };
  }
}
