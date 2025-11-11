import 'agreement.dart';
import 'gas_meter_point_meter.dart';
import 'meter_point.dart';

class GasMeterPoint extends MeterPoint<GasMeterPointMeter> {
  String mprn;

  GasMeterPoint({
    List<Agreement>? agreements,
    required int consumptionStandard,
    List<GasMeterPointMeter>? meters,
    required this.mprn,
  }) : super(
          agreements: agreements,
          consumptionStandard: consumptionStandard,
          meters: meters,
        );

  factory GasMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GasMeterPoint(
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => Agreement.fromJson(e as Map<String, dynamic>))
          .toList(),
      consumptionStandard: (json['consumption_standard'] as num).toInt(),
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) => GasMeterPointMeter.fromJson(e as Map<String, dynamic>))
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
