import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'PaginatedHistoricalChargeList',
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
                    'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=4',
                'previous':
                    'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
                'results': [
                  {
                    'value_exc_vat': 11,
                    'value_inc_vat': 11.55,
                    'valid_from': '2018-05-16T22:30:00Z',
                    'valid_to': '2018-05-16T23:00:00Z',
                    'payment_method': 'DIRECT_DEBIT',
                  }
                ],
              };

              final result = PaginatedHistoricalChargeList.fromJson(json);

              expect(
                result.count,
                123,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=4',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
              );

              expect(
                result.results,
                isA<List<HistoricalCharge>>().having(
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
                    'value_exc_vat': 11,
                    'value_inc_vat': 11.55,
                    'valid_from': '2018-05-16T22:30:00Z',
                    'valid_to': '2018-05-16T23:00:00Z',
                    'payment_method': 'DIRECT_DEBIT',
                  }
                ],
              };

              final result = PaginatedHistoricalChargeList.fromJson(json);

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
                isA<List<HistoricalCharge>>().having(
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
              final model = PaginatedHistoricalChargeList(
                count: 123,
                next:
                    'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=4',
                previous:
                    'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
                results: [
                  HistoricalCharge(
                    valueExcVat: 11,
                    valueIncVat: 11.55,
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
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=4',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
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
              final model = PaginatedHistoricalChargeList(
                count: 123,
                results: [
                  HistoricalCharge(
                    valueExcVat: 11,
                    valueIncVat: 11.55,
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
