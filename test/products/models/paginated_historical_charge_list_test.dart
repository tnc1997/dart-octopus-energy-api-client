import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                'count': 1,
                'next': 'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
                'previous': 'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=1',
                'results': [
                  {
                    'value_exc_vat': 10.5,
                    'value_inc_vat': 11.0,
                  }
                ],
              };

              final result = PaginatedHistoricalChargeList.fromJson(json);

              expect(
                result.count,
                1,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=1',
              );

              expect(
                result.results,
                hasLength(1),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'count': 1,
                'results': [
                  {
                    'value_exc_vat': 10.5,
                    'value_inc_vat': 11.0,
                  }
                ],
              };

              final result = PaginatedHistoricalChargeList.fromJson(json);

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
                result.results,
                hasLength(1),
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
                count: 1,
                next: 'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
                previous: 'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=1',
                results: [
                  HistoricalCharge(
                    valueExcVat: 10.5,
                    valueIncVat: 11.0,
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
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=2',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/?page=1',
              );

              expect(
                result['results'],
                hasLength(1),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = PaginatedHistoricalChargeList(
                count: 1,
                results: [
                  HistoricalCharge(
                    valueExcVat: 10.5,
                    valueIncVat: 11.0,
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
                result['results'],
                hasLength(1),
              );
            },
          );
        },
      );
    },
  );
}
