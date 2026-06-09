import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'PaginatedProductsList',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'count': 123,
                'next': 'https://api.octopus.energy/v1/products/?page=4',
                'previous': 'https://api.octopus.energy/v1/products/?page=2',
                'results': [
                  {
                    'available_from': '2017-05-05T05:37:27Z',
                    'available_to': null,
                    'brand': 'TENTACLE_ENERGY',
                    'code': 'VAR-17-01-11',
                    'description':
                        'This great value 12 month fixed tariff guarantees value.',
                    'direction': 'IMPORT',
                    'display_name': 'Flexible Tentacle',
                    'full_name': 'Flexible Tentacle Offer January 2017 v1',
                    'is_business': true,
                    'is_green': false,
                    'is_prepay': true,
                    'is_restricted': false,
                    'is_tracker': true,
                    'is_variable': false,
                    'links': [
                      {
                        'href':
                            'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                        'method': 'GET',
                        'rel': 'self',
                      }
                    ],
                    'term': 12,
                  }
                ],
              };

              final result = PaginatedProductsList.fromJson(json);

              expect(
                result.count,
                123,
              );

              expect(
                result.next,
                'https://api.octopus.energy/v1/products/?page=4',
              );

              expect(
                result.previous,
                'https://api.octopus.energy/v1/products/?page=2',
              );

              expect(
                result.results,
                isA<List<Products>>().having(
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
                    'available_from': '2017-05-05T05:37:27Z',
                    'available_to': null,
                    'brand': 'TENTACLE_ENERGY',
                    'code': 'VAR-17-01-11',
                    'description':
                        'This great value 12 month fixed tariff guarantees value.',
                    'direction': 'IMPORT',
                    'display_name': 'Flexible Tentacle',
                    'full_name': 'Flexible Tentacle Offer January 2017 v1',
                    'is_business': true,
                    'is_green': false,
                    'is_prepay': true,
                    'is_restricted': false,
                    'is_tracker': true,
                    'is_variable': false,
                    'links': [
                      {
                        'href':
                            'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                        'method': 'GET',
                        'rel': 'self',
                      }
                    ],
                    'term': 12,
                  }
                ],
              };

              final result = PaginatedProductsList.fromJson(json);

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
                isA<List<Products>>().having(
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
              final model = PaginatedProductsList(
                count: 123,
                next: 'https://api.octopus.energy/v1/products/?page=4',
                previous: 'https://api.octopus.energy/v1/products/?page=2',
                results: [
                  Products(
                    availableFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                    brand: 'TENTACLE_ENERGY',
                    code: 'VAR-17-01-11',
                    description:
                        'This great value 12 month fixed tariff guarantees value.',
                    direction: Direction.import,
                    displayName: 'Flexible Tentacle',
                    fullName: 'Flexible Tentacle Offer January 2017 v1',
                    isBusiness: true,
                    isGreen: false,
                    isPrepay: true,
                    isRestricted: false,
                    isTracker: true,
                    isVariable: false,
                    links: [
                      Link(
                        href:
                            'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                        method: 'GET',
                        rel: 'self',
                      ),
                    ],
                    term: 12,
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
                'https://api.octopus.energy/v1/products/?page=4',
              );

              expect(
                result['previous'],
                'https://api.octopus.energy/v1/products/?page=2',
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
              final model = PaginatedProductsList(
                count: 123,
                results: [
                  Products(
                    availableFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                    brand: 'TENTACLE_ENERGY',
                    code: 'VAR-17-01-11',
                    description:
                        'This great value 12 month fixed tariff guarantees value.',
                    direction: Direction.import,
                    displayName: 'Flexible Tentacle',
                    fullName: 'Flexible Tentacle Offer January 2017 v1',
                    isBusiness: true,
                    isGreen: false,
                    isPrepay: true,
                    isRestricted: false,
                    isTracker: true,
                    isVariable: false,
                    links: [
                      Link(
                        href:
                            'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                        method: 'GET',
                        rel: 'self',
                      ),
                    ],
                    term: 12,
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
