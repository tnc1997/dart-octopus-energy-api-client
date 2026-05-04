import 'account_agreement.dart';
import 'account_electricity_meter_point_meter.dart';
import 'account_meter_point.dart';

class AccountElectricityMeterPoint
    extends AccountMeterPoint<AccountElectricityMeterPointMeter> {
  bool? isExport;
  String mpan;
  int? profileClass;

  AccountElectricityMeterPoint({
    super.agreements,
    super.consumptionStandard,
    this.isExport,
    super.meters,
    required this.mpan,
    this.profileClass,
  });

  factory AccountElectricityMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountElectricityMeterPoint(
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => AccountAgreement.fromJson(e as Map<String, dynamic>))
          .toList(),
      consumptionStandard: (json['consumption_standard'] as num?)?.toInt(),
      isExport: json['is_export'] as bool?,
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) => AccountElectricityMeterPointMeter.fromJson(
              e as Map<String, dynamic>))
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
