import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'PaginatedConsumptionList',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final intervalStart = DateTime.parse('1970-01-01T00:00:00.000Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00.000Z');

              final json = {
                'count': 1,
                'next': 'https://api.octopus.energy/v1/consumption/?page=2',
                'previous': 'https://api.octopus.energy/v1/consumption/?page=1',
                'results': [
                  {
                    'consumption': '0.5',
                    'interval_end': intervalEnd.toIso8601String(),
                    'interval_start': intervalStart.toIso8601String(),
                  },
                ],
              };

              final result = PaginatedConsumptionList.fromJson(json);

              expect(
                result.count,
                1,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/consumption/?page=2',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/consumption/?page=1',
              );

              expect(
                result.results.length,
                1,
              );

              expect(
                result.results[0].consumption,
                0.5,
              );

              expect(
                result.results[0].intervalEnd,
                intervalEnd,
              );

              expect(
                result.results[0].intervalStart,
                intervalStart,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final intervalStart = DateTime.parse('1970-01-01T00:00:00.000Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00.000Z');

              final json = {
                'count': 1,
                'results': [
                  {
                    'consumption': '0.5',
                    'interval_end': intervalEnd.toIso8601String(),
                    'interval_start': intervalStart.toIso8601String(),
                  },
                ],
              };

              final result = PaginatedConsumptionList.fromJson(json);

              expect(
                result.count,
                1,
              );

              expect(
                result.next,
                isNull,
              );

              expect(
                result.previous,
                isNull,
              );

              expect(
                result.results.length,
                1,
              );

              expect(
                result.results[0].consumption,
                0.5,
              );

              expect(
                result.results[0].intervalEnd,
                intervalEnd,
              );

              expect(
                result.results[0].intervalStart,
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
              final intervalStart = DateTime.parse('1970-01-01T00:00:00.000Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00.000Z');

              final model = PaginatedConsumptionList(
                count: 1,
                next: 'https://api.octopus.energy/v1/consumption/?page=2',
                previous: 'https://api.octopus.energy/v1/consumption/?page=1',
                results: [
                  Consumption(
                    consumption: 0.5,
                    intervalEnd: intervalEnd,
                    intervalStart: intervalStart,
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                1,
              );

              expect(
                result['next'],
                'https://api.octopus.energy/v1/consumption/?page=2',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/consumption/?page=1',
              );

              expect(
                result['results'].length,
                1,
              );

              expect(
                result['results'][0]['consumption'],
                '0.5',
              );

              expect(
                result['results'][0]['interval_end'],
                '1970-01-01T00:30:00.000Z',
              );

              expect(
                result['results'][0]['interval_start'],
                '1970-01-01T00:00:00.000Z',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final intervalStart = DateTime.parse('1970-01-01T00:00:00.000Z');
              final intervalEnd = DateTime.parse('1970-01-01T00:30:00.000Z');

              final model = PaginatedConsumptionList(
                count: 1,
                results: [
                  Consumption(
                    consumption: 0.5,
                    intervalEnd: intervalEnd,
                    intervalStart: intervalStart,
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                1,
              );

              expect(
                result['next'],
                isNull,
              );

              expect(
                result['previous'],
                isNull,
              );

              expect(
                result['results'].length,
                1,
              );

              expect(
                result['results'][0]['consumption'],
                '0.5',
              );

              expect(
                result['results'][0]['interval_end'],
                '1970-01-01T00:30:00.000Z',
              );

              expect(
                result['results'][0]['interval_start'],
                '1970-01-01T00:00:00.000Z',
              );
            },
          );
        },
      );
    },
  );
}
