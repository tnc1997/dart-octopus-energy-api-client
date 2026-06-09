import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'QuoteProduct',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'annual_amount': 845.67,
                'code': 'VAR-17-01-11',
                'description':
                    'This great value 12 month fixed tariff guarantees value.',
                'display_name': 'Flexible Tentacle',
                'electricity_til': {
                  'tariff_code': 'E-1R-VAR-17-01-11-A',
                },
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'gas_til': {
                  'tariff_code': 'G-1R-VAR-17-01-11-C',
                },
                'id': 17,
                'monthly_amount': 70.47,
              };

              final result = QuoteProduct.fromJson(json);

              expect(
                result.annualAmount,
                845.67,
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
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.electricityTil,
                isA<QuoteTil>(),
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.gasTil,
                isA<QuoteTil>(),
              );

              expect(
                result.id,
                17,
              );

              expect(
                result.monthlyAmount,
                70.47,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'id': 17,
              };

              final result = QuoteProduct.fromJson(json);

              expect(
                result.annualAmount,
                isNull,
              );

              expect(
                result.code,
                isNull,
              );

              expect(
                result.description,
                isNull,
              );

              expect(
                result.displayName,
                isNull,
              );

              expect(
                result.electricityTil,
                isNull,
              );

              expect(
                result.fullName,
                isNull,
              );

              expect(
                result.gasTil,
                isNull,
              );

              expect(
                result.id,
                17,
              );

              expect(
                result.monthlyAmount,
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
              final model = QuoteProduct(
                annualAmount: 845.67,
                code: 'VAR-17-01-11',
                description:
                    'This great value 12 month fixed tariff guarantees value.',
                displayName: 'Flexible Tentacle',
                electricityTil: QuoteTil(
                  tariffCode: 'E-1R-VAR-17-01-11-A',
                ),
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                gasTil: QuoteTil(
                  tariffCode: 'G-1R-VAR-17-01-11-C',
                ),
                id: 17,
                monthlyAmount: 70.47,
              );

              final result = model.toJson();

              expect(
                result['annual_amount'],
                845.67,
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
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['electricity_til'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['gas_til'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['id'],
                17,
              );

              expect(
                result['monthly_amount'],
                70.47,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = QuoteProduct(
                id: 17,
              );

              final result = model.toJson();

              expect(
                result['annual_amount'],
                isNull,
              );

              expect(
                result['code'],
                isNull,
              );

              expect(
                result['description'],
                isNull,
              );

              expect(
                result['display_name'],
                isNull,
              );

              expect(
                result['electricity_til'],
                isNull,
              );

              expect(
                result['full_name'],
                isNull,
              );

              expect(
                result['gas_til'],
                isNull,
              );

              expect(
                result['id'],
                17,
              );

              expect(
                result['monthly_amount'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
