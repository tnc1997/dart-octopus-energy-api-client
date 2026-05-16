import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Consumption',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final intervalStart = DateTime.parse('1970-01-01T00:00:00Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00Z');

              final json = {
                'consumption': 0.5,
                'interval_end': intervalEnd.toIso8601String(),
                'interval_start': intervalStart.toIso8601String(),
              };

              final result = Consumption.fromJson(json);

              expect(
                result.consumption,
                0.5,
              );

              expect(
                result.intervalEnd,
                intervalEnd,
              );

              expect(
                result.intervalStart,
                intervalStart,
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final intervalStart = DateTime.parse('1970-01-01T00:00:00Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00Z');

              final model = Consumption(
                consumption: 0.5,
                intervalEnd: intervalEnd,
                intervalStart: intervalStart,
              );

              final result = model.toJson();

              expect(
                result['consumption'],
                0.5,
              );

              expect(
                result['interval_end'],
                '1970-01-01T00:30:00.000Z',
              );

              expect(
                result['interval_start'],
                '1970-01-01T00:00:00.000Z',
              );
            },
          );
        },
      );
    },
  );
}
