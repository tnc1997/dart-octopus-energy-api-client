import 'agreement.dart';
import 'meter_point_meter.dart';

abstract class MeterPoint<T extends MeterPointMeter> {
  List<Agreement>? agreements;
  int consumptionStandard;
  List<T>? meters;

  MeterPoint({
    this.agreements,
    required this.consumptionStandard,
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
