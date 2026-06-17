import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Agreement',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '2019-12-01',
                'valid_to_date': '2020-12-01',
              };

              final result = Agreement.fromJson(json);

              expect(
                result.mpxn,
                '1013004420117',
              );

              expect(
                result.tariffCode,
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result.validFromDate,
                DateTime.parse('2019-12-01'),
              );

              expect(
                result.validToDate,
                DateTime.parse('2020-12-01'),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '2019-12-01',
              };

              final result = Agreement.fromJson(json);

              expect(
                result.mpxn,
                '1013004420117',
              );

              expect(
                result.tariffCode,
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result.validFromDate,
                isNull,
              );

              expect(
                result.validToDate,
                isNull,
              );
            },
          );

          test(
            'should return model with null validFromDate and validToDate from json with an empty string',
            () {
              final json = {
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '',
                'valid_to_date': '',
              };

              final result = Agreement.fromJson(json);

              expect(
                result.validFromDate,
                isNull,
              );

              expect(
                result.validToDate,
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
              final model = Agreement(
                mpxn: '1013004420117',
                tariffCode: 'E-1R-SOME-PRODUCT-J',
                validFromDate: DateTime.parse('2019-12-01'),
                validToDate: DateTime.parse('2020-12-01'),
              );

              final result = model.toJson();

              expect(
                result['mpxn'],
                '1013004420117',
              );

              expect(
                result['tariff_code'],
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result['valid_from_date'],
                '2019-12-01T00:00:00.000',
              );

              expect(
                result['valid_to_date'],
                '2020-12-01T00:00:00.000',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Agreement(
                mpxn: '1013004420117',
                tariffCode: 'E-1R-SOME-PRODUCT-J',
                validFromDate: DateTime.parse('2019-12-01'),
              );

              final result = model.toJson();

              expect(
                result['mpxn'],
                '1013004420117',
              );

              expect(
                result['tariff_code'],
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result['valid_from_date'],
                '2019-12-01T00:00:00.000',
              );

              expect(
                result['valid_to_date'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
