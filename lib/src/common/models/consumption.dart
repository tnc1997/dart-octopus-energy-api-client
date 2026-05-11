import '../utils/decimal_utils.dart';

class Consumption {
  double consumption;
  DateTime intervalEnd;
  DateTime intervalStart;

  Consumption({
    required this.consumption,
    required this.intervalEnd,
    required this.intervalStart,
  });

  factory Consumption.fromJson(
    Map<String, dynamic> json,
  ) {
    return Consumption(
      consumption: parseDecimal(json['consumption'] as String),
      intervalEnd: DateTime.parse(json['interval_end'] as String),
      intervalStart: DateTime.parse(json['interval_start'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'consumption': consumption.toString(),
      'interval_end': intervalEnd.toIso8601String(),
      'interval_start': intervalStart.toIso8601String(),
    };
  }
}
