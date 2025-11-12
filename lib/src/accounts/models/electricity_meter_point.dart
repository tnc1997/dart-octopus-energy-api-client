import 'agreement.dart';
import 'electricity_meter_point_meter.dart';
import 'meter_point.dart';

class ElectricityMeterPoint extends MeterPoint<ElectricityMeterPointMeter> {
  bool? isExport;
  String mpan;
  int? profileClass;

  ElectricityMeterPoint({
    List<Agreement>? agreements,
    required int consumptionStandard,
    this.isExport,
    List<ElectricityMeterPointMeter>? meters,
    required this.mpan,
    this.profileClass,
  }) : super(
          agreements: agreements,
          consumptionStandard: consumptionStandard,
          meters: meters,
        );

  factory ElectricityMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElectricityMeterPoint(
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => Agreement.fromJson(e as Map<String, dynamic>))
          .toList(),
      consumptionStandard: (json['consumption_standard'] as num).toInt(),
      isExport: json['is_export'] as bool?,
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) =>
              ElectricityMeterPointMeter.fromJson(e as Map<String, dynamic>))
          .toList(),
      mpan: json['mpan'] as String,
      profileClass: (json['profile_class'] as num?)?.toInt(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'agreements': agreements?.map((e) => e.toJson()).toList(),
      'consumption_standard': consumptionStandard,
      'is_export': isExport,
      'meters': meters?.map((e) => e.toJson()).toList(),
      'mpan': mpan,
      'profile_class': profileClass,
    };
  }
}
