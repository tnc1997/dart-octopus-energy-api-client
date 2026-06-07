import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'HistoricalCharge',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'payment_method': 'DIRECT_DEBIT',
                'valid_from': '2018-05-16T22:30:00Z',
                'valid_to': '2018-05-16T23:00:00Z',
                'value_exc_vat': 11,
                'value_inc_vat': 11.55,
              };

              final result = HistoricalCharge.fromJson(json);

              expect(
                result.paymentMethod,
                'DIRECT_DEBIT',
              );

              expect(
                result.validFrom,
                DateTime.parse('2018-05-16T22:30:00Z'),
              );

              expect(
                result.validTo,
                DateTime.parse('2018-05-16T23:00:00Z'),
              );

              expect(
                result.valueExcVat,
                11,
              );

              expect(
                result.valueIncVat,
                11.55,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'value_exc_vat': 11,
                'value_inc_vat': 11.55,
              };

              final result = HistoricalCharge.fromJson(json);

              expect(
                result.paymentMethod,
                isNull,
              );

              expect(
                result.validFrom,
                isNull,
              );

              expect(
                result.validTo,
                isNull,
              );

              expect(
                result.valueExcVat,
                11,
              );

              expect(
                result.valueIncVat,
                11.55,
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
              final model = HistoricalCharge(
                paymentMethod: 'DIRECT_DEBIT',
                validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
                validTo: DateTime.parse('2018-05-16T23:00:00Z'),
                valueExcVat: 11,
                valueIncVat: 11.55,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                'DIRECT_DEBIT',
              );

              expect(
                result['valid_from'],
                '2018-05-16T22:30:00.000Z',
              );

              expect(
                result['valid_to'],
                '2018-05-16T23:00:00.000Z',
              );

              expect(
                result['value_exc_vat'],
                11,
              );

              expect(
                result['value_inc_vat'],
                11.55,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = HistoricalCharge(
                valueExcVat: 11,
                valueIncVat: 11.55,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                isNull,
              );

              expect(
                result['valid_from'],
                isNull,
              );

              expect(
                result['valid_to'],
                isNull,
              );

              expect(
                result['value_exc_vat'],
                11,
              );

              expect(
                result['value_inc_vat'],
                11.55,
              );
            },
          );
        },
      );
    },
  );
}
