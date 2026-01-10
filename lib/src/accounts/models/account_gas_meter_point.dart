import 'account_agreement.dart';
import 'account_gas_meter_point_meter.dart';
import 'account_meter_point.dart';

class AccountGasMeterPoint
    extends AccountMeterPoint<AccountGasMeterPointMeter> {
  String mprn;

  AccountGasMeterPoint({
    List<AccountAgreement>? agreements,
    int? consumptionStandard,
    List<AccountGasMeterPointMeter>? meters,
    required this.mprn,
  }) : super(
          agreements: agreements,
          consumptionStandard: consumptionStandard,
          meters: meters,
        );

  factory AccountGasMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountGasMeterPoint(
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => AccountAgreement.fromJson(e as Map<String, dynamic>))
          .toList(),
      consumptionStandard: (json['consumption_standard'] as num?)?.toInt(),
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) =>
              AccountGasMeterPointMeter.fromJson(e as Map<String, dynamic>))
          .toList(),
      mprn: json['mprn'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'agreements': agreements?.map((e) => e.toJson()).toList(),
      'consumption_standard': consumptionStandard,
      'meters': meters?.map((e) => e.toJson()).toList(),
      'mprn': mprn,
    };
  }
}
