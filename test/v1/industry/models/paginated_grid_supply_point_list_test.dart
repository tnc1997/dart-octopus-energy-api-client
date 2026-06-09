import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'PaginatedGridSupplyPointList',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'count': 23,
                'next':
                    'https://api.octopus.energy/v1/industry/grid-supply-points/?page=3',
                'previous':
                    'https://api.octopus.energy/v1/industry/grid-supply-points/?page=1',
                'results': [
                  {
                    'group_id': '_C',
                  }
                ],
              };

              final result = PaginatedGridSupplyPointList.fromJson(json);

              expect(
                result.count,
                23,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/industry/grid-supply-points/?page=3',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/industry/grid-supply-points/?page=1',
              );

              expect(
                result.results,
                isA<List<GridSupplyPoint>>().having(
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
                'count': 23,
                'results': [
                  {
                    'group_id': '_C',
                  }
                ],
              };

              final result = PaginatedGridSupplyPointList.fromJson(json);

              expect(
                result.count,
                23,
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
                isA<List<GridSupplyPoint>>().having(
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
              final model = PaginatedGridSupplyPointList(
                count: 23,
                next:
                    'https://api.octopus.energy/v1/industry/grid-supply-points/?page=3',
                previous:
                    'https://api.octopus.energy/v1/industry/grid-supply-points/?page=1',
                results: [
                  GridSupplyPoint(
                    groupId: '_C',
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                23,
              );

              expect(
                result['next'],
                'https://api.octopus.energy/v1/industry/grid-supply-points/?page=3',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/industry/grid-supply-points/?page=1',
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
              final model = PaginatedGridSupplyPointList(
                count: 23,
                results: [
                  GridSupplyPoint(
                    groupId: '_C',
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['count'],
                23,
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
