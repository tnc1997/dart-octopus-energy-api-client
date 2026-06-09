import 'account_agreement.dart';
import 'account_meter_point_meter.dart';

abstract class AccountMeterPoint<T extends AccountMeterPointMeter> {
  List<AccountAgreement>? agreements;
  int? consumptionStandard;
  List<T>? meters;

  AccountMeterPoint({
    this.agreements,
    this.consumptionStandard,
    this.meters,
  });

  Map<String, dynamic> toJson() {
    return {
      'agreements': agreements?.map((e) => e.toJson()).toList(),
      'consumption_standard': consumptionStandard,
      'meters': meters?.map((e) => e.toJson()).toList(),
    };
  }
}
