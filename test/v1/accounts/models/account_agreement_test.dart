import 'package:octopus_energy_api_client/v1.dart';
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
                'tariff_code': 'E-1R-VAR-17-01-11-A',
                'valid_from': '2018-05-16T22:30:00Z',
                'valid_to': '2018-05-16T23:00:00Z',
              };

              final result = AccountAgreement.fromJson(json);

              expect(
                result.tariffCode,
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result.validFrom,
                DateTime.parse('2018-05-16T22:30:00Z'),
              );

              expect(
                result.validTo,
                DateTime.parse('2018-05-16T23:00:00Z'),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'tariff_code': 'E-1R-VAR-17-01-11-A',
                'valid_from': '2018-05-16T22:30:00Z',
              };

              final result = AccountAgreement.fromJson(json);

              expect(
                result.tariffCode,
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result.validFrom,
                DateTime.parse('2018-05-16T22:30:00Z'),
              );

              expect(
                result.validTo,
                isNull,
              );
            },
          );

          test(
            'should return model with null validTo from json with an empty string',
            () {
              final json = {
                'tariff_code': 'E-1R-VAR-17-01-11-A',
                'valid_from': '2018-05-16T22:30:00Z',
                'valid_to': '',
              };

              final result = AccountAgreement.fromJson(json);

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
                tariffCode: 'E-1R-VAR-17-01-11-A',
                validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
                validTo: DateTime.parse('2018-05-16T23:00:00Z'),
              );

              final result = model.toJson();

              expect(
                result['tariff_code'],
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['valid_from'],
                '2018-05-16T22:30:00.000Z',
              );

              expect(
                result['valid_to'],
                '2018-05-16T23:00:00.000Z',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountAgreement(
                tariffCode: 'E-1R-VAR-17-01-11-A',
                validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
              );

              final result = model.toJson();

              expect(
                result['tariff_code'],
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['valid_from'],
                '2018-05-16T22:30:00.000Z',
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
