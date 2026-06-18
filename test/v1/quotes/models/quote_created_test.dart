import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'QuoteCreated',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'code': 'VAR-17-01-11',
                'gsp': '_C',
                'products': [
                  {
                    'id': 17,
                  }
                ],
              };

              final result = QuoteCreated.fromJson(json);

              expect(
                result.code,
                'VAR-17-01-11',
              );

              expect(
                result.gsp,
                '_C',
              );

              expect(
                result.products,
                isA<List<QuoteProduct>>().having(
                  (products) => products.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final result = QuoteCreated.fromJson(<String, dynamic>{});

              expect(
                result.code,
                isNull,
              );

              expect(
                result.gsp,
                isNull,
              );

              expect(
                result.products,
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
              final model = QuoteCreated(
                code: 'VAR-17-01-11',
                gsp: '_C',
                products: [
                  QuoteProduct(
                    id: 17,
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['code'],
                'VAR-17-01-11',
              );

              expect(
                result['gsp'],
                '_C',
              );

              expect(
                result['products'],
                isA<List<Map<String, dynamic>>>().having(
                  (products) => products.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = QuoteCreated();

              final result = model.toJson();

              expect(
                result['code'],
                isNull,
              );

              expect(
                result['gsp'],
                isNull,
              );

              expect(
                result['products'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
