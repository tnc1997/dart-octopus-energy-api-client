import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountAgreement',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'tariff_code': 'E-1R-VAR-22-11-01-A',
                'valid_from': '1970-01-01T00:00:00.000Z',
                'valid_to': '1970-12-31T23:59:59.000Z',
              };

              final result = AccountAgreement.fromJson(json);

              expect(
                result.tariffCode,
                'E-1R-VAR-22-11-01-A',
              );

              expect(
                result.validFrom,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.validTo,
                DateTime.parse('1970-12-31T23:59:59.000Z'),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'tariff_code': 'E-1R-VAR-22-11-01-A',
                'valid_from': '1970-01-01T00:00:00.000Z',
              };

              final result = AccountAgreement.fromJson(json);

              expect(
                result.tariffCode,
                'E-1R-VAR-22-11-01-A',
              );

              expect(
                result.validFrom,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.validTo,
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
              final model = AccountAgreement(
                tariffCode: 'E-1R-VAR-22-11-01-A',
                validFrom: DateTime.parse('1970-01-01T00:00:00.000Z'),
                validTo: DateTime.parse('1970-12-31T23:59:59.000Z'),
              );

              final result = model.toJson();

              expect(
                result['tariff_code'],
                'E-1R-VAR-22-11-01-A',
              );

              expect(
                result['valid_from'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['valid_to'],
                '1970-12-31T23:59:59.000Z',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountAgreement(
                tariffCode: 'E-1R-VAR-22-11-01-A',
                validFrom: DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              final result = model.toJson();

              expect(
                result['tariff_code'],
                'E-1R-VAR-22-11-01-A',
              );

              expect(
                result['valid_from'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['valid_to'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
