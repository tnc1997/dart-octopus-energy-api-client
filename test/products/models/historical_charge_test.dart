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
                'valid_from': '1970-01-01T00:00:00.000Z',
                'valid_to': '1970-01-31T23:59:59.000Z',
                'value_exc_vat': 10.5,
                'value_inc_vat': 11.0,
              };

              final result = HistoricalCharge.fromJson(json);

              expect(
                result.paymentMethod,
                'DIRECT_DEBIT',
              );

              expect(
                result.validFrom,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.validTo,
                DateTime.parse('1970-01-31T23:59:59.000Z'),
              );

              expect(
                result.valueExcVat,
                10.5,
              );

              expect(
                result.valueIncVat,
                11.0,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'value_exc_vat': 10.5,
                'value_inc_vat': 11.0,
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
                10.5,
              );

              expect(
                result.valueIncVat,
                11.0,
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
                validFrom: DateTime.parse('1970-01-01T00:00:00.000Z'),
                validTo: DateTime.parse('1970-01-31T23:59:59.000Z'),
                valueExcVat: 10.5,
                valueIncVat: 11.0,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                'DIRECT_DEBIT',
              );

              expect(
                result['valid_from'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['valid_to'],
                '1970-01-31T23:59:59.000Z',
              );

              expect(
                result['value_exc_vat'],
                10.5,
              );

              expect(
                result['value_inc_vat'],
                11.0,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = HistoricalCharge(
                valueExcVat: 10.5,
                valueIncVat: 11.0,
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
                10.5,
              );

              expect(
                result['value_inc_vat'],
                11.0,
              );
            },
          );
        },
      );
    },
  );
}
