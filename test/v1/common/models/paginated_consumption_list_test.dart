import 'package:octopus_energy_api_client/v1.dart';
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
              final json = {
                'count': 123,
                'next':
                    'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=4',
                'previous':
                    'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=2',
                'results': [
                  {
                    'consumption': '0.063',
                    'interval_end': '2018-05-19T00:00:00.000Z',
                    'interval_start': '2018-05-18T23:30:00.000Z',
                  },
                ],
              };

              final result = PaginatedConsumptionList.fromJson(json);

              expect(
                result.count,
                123,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=4',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=2',
              );

              expect(
                result.results,
                isA<List<Consumption>>().having(
                  (results) => results.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'count': 123,
                'results': [
                  {
                    'consumption': '0.063',
                    'interval_end': '2018-05-19T00:00:00.000Z',
                    'interval_start': '2018-05-18T23:30:00.000Z',
                  },
                ],
              };

              final result = PaginatedConsumptionList.fromJson(json);

              expect(
                result.count,
                123,
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
                result.results,
                isA<List<Consumption>>().having(
                  (results) => results.length,
                  'length',
                  1,
                ),
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
              final model = PaginatedConsumptionList(
                count: 123,
                next:
                    'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=4',
                previous:
                    'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=2',
                results: [
                  Consumption(
                    consumption: 0.063,
                    intervalEnd: DateTime.parse('2018-05-19T01:00:00+0100'),
                    intervalStart: DateTime.parse('2018-05-19T00:30:00+0100'),
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                123,
              );

              expect(
                result['next'],
                'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=4',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/gas-meter-points/1234987426/meters/Z16N389556/consumption/?page=2',
              );

              expect(
                result['results'],
                isA<List<Map<String, dynamic>>>().having(
                  (results) => results.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = PaginatedConsumptionList(
                count: 123,
                results: [
                  Consumption(
                    consumption: 0.063,
                    intervalEnd: DateTime.parse('2018-05-19T01:00:00+0100'),
                    intervalStart: DateTime.parse('2018-05-19T00:30:00+0100'),
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                123,
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
                result['results'],
                isA<List<Map<String, dynamic>>>().having(
                  (results) => results.length,
                  'length',
                  1,
                ),
              );
            },
          );
        },
      );
    },
  );
}
