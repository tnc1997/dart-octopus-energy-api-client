import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Products',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
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
              };

              final result = Products.fromJson(json);

              expect(
                result.availableFrom,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.availableTo,
                isNull,
              );

              expect(
                result.brand,
                'TENTACLE_ENERGY',
              );

              expect(
                result.code,
                'VAR-17-01-11',
              );

              expect(
                result.description,
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result.direction,
                Direction.import,
              );

              expect(
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.isBusiness,
                isTrue,
              );

              expect(
                result.isGreen,
                isFalse,
              );

              expect(
                result.isPrepay,
                isTrue,
              );

              expect(
                result.isRestricted,
                isFalse,
              );

              expect(
                result.isTracker,
                isTrue,
              );

              expect(
                result.isVariable,
                isFalse,
              );

              expect(
                result.links,
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.term,
                12,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'available_from': '2017-05-05T05:37:27Z',
                'brand': 'TENTACLE_ENERGY',
                'code': 'VAR-17-01-11',
                'description':
                    'This great value 12 month fixed tariff guarantees value.',
                'display_name': 'Flexible Tentacle',
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'is_restricted': false,
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
              };

              final result = Products.fromJson(json);

              expect(
                result.availableFrom,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.availableTo,
                isNull,
              );

              expect(
                result.brand,
                'TENTACLE_ENERGY',
              );

              expect(
                result.code,
                'VAR-17-01-11',
              );

              expect(
                result.description,
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result.direction,
                isNull,
              );

              expect(
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.isBusiness,
                isNull,
              );

              expect(
                result.isGreen,
                isNull,
              );

              expect(
                result.isPrepay,
                isNull,
              );

              expect(
                result.isRestricted,
                isFalse,
              );

              expect(
                result.isTracker,
                isNull,
              );

              expect(
                result.isVariable,
                isNull,
              );

              expect(
                result.links,
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.term,
                isNull,
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
              final model = Products(
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
              );

              final result = model.toJson();

              expect(
                result['available_from'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['available_to'],
                isNull,
              );

              expect(
                result['brand'],
                'TENTACLE_ENERGY',
              );

              expect(
                result['code'],
                'VAR-17-01-11',
              );

              expect(
                result['description'],
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result['direction'],
                'IMPORT',
              );

              expect(
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['is_business'],
                isTrue,
              );

              expect(
                result['is_green'],
                isFalse,
              );

              expect(
                result['is_prepay'],
                isTrue,
              );

              expect(
                result['is_restricted'],
                isFalse,
              );

              expect(
                result['is_tracker'],
                isTrue,
              );

              expect(
                result['is_variable'],
                isFalse,
              );

              expect(
                result['links'],
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['term'],
                12,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Products(
                availableFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                brand: 'TENTACLE_ENERGY',
                code: 'VAR-17-01-11',
                description:
                    'This great value 12 month fixed tariff guarantees value.',
                displayName: 'Flexible Tentacle',
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                isRestricted: false,
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['available_from'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['available_to'],
                isNull,
              );

              expect(
                result['brand'],
                'TENTACLE_ENERGY',
              );

              expect(
                result['code'],
                'VAR-17-01-11',
              );

              expect(
                result['description'],
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result['direction'],
                isNull,
              );

              expect(
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['is_business'],
                isNull,
              );

              expect(
                result['is_green'],
                isNull,
              );

              expect(
                result['is_prepay'],
                isNull,
              );

              expect(
                result['is_restricted'],
                isFalse,
              );

              expect(
                result['is_tracker'],
                isNull,
              );

              expect(
                result['is_variable'],
                isNull,
              );

              expect(
                result['links'],
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['term'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
