import 'account_electricity_meter_point.dart';
import 'account_gas_meter_point.dart';

class AccountProperty {
  String? addressLine1;
  String? addressLine2;
  String? addressLine3;
  String? county;
  List<AccountElectricityMeterPoint>? electricityMeterPoints;
  List<AccountGasMeterPoint>? gasMeterPoints;
  int id;
  DateTime movedInAt;
  DateTime? movedOutAt;
  String? postcode;
  String? town;

  AccountProperty({
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

  factory AccountProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountProperty(
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      addressLine3: json['address_line_3'] as String?,
      county: json['county'] as String?,
      electricityMeterPoints: (json['electricity_meter_points']
              as List<dynamic>?)
          ?.map((e) =>
              AccountElectricityMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasMeterPoints: (json['gas_meter_points'] as List<dynamic>?)
          ?.map((e) => AccountGasMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      movedInAt: DateTime.parse(json['moved_in_at'] as String),
      movedOutAt: json['moved_out_at']?.isNotEmpty == true
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
