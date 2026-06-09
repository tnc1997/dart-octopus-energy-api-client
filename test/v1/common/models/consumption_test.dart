import 'package:octopus_energy_api_client/v1.dart';
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
              final json = {
                'consumption': '0.063',
                'interval_end': '2018-05-19T00:00:00.000Z',
                'interval_start': '2018-05-18T23:30:00.000Z',
              };

              final result = Consumption.fromJson(json);

              expect(
                result.consumption,
                0.063,
              );

              expect(
                result.intervalEnd,
                DateTime.parse('2018-05-19T01:00:00+0100'),
              );

              expect(
                result.intervalStart,
                DateTime.parse('2018-05-19T00:30:00+0100'),
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
              final model = Consumption(
                consumption: 0.063,
                intervalEnd: DateTime.parse('2018-05-19T01:00:00+0100'),
                intervalStart: DateTime.parse('2018-05-19T00:30:00+0100'),
              );

              final result = model.toJson();

              expect(
                result['consumption'],
                '0.063',
              );

              expect(
                result['interval_end'],
                '2018-05-19T00:00:00.000Z',
              );

              expect(
                result['interval_start'],
                '2018-05-18T23:30:00.000Z',
              );
            },
          );
        },
      );
    },
  );
}
