import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ProprietorAddress',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'line_1': '87 Doveys Close',
                'line_2': 'Address Line 2',
                'line_3': 'Address Line 3',
                'line_4': 'Ringwood',
                'line_5': 'Hampshire',
                'postcode': 'BH24 4BP',
              };

              final result = ProprietorAddress.fromJson(json);

              expect(
                result.line1,
                '87 Doveys Close',
              );

              expect(
                result.line2,
                'Address Line 2',
              );

              expect(
                result.line3,
                'Address Line 3',
              );

              expect(
                result.line4,
                'Ringwood',
              );

              expect(
                result.line5,
                'Hampshire',
              );

              expect(
                result.postcode,
                'BH24 4BP',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'line_1': '87 Doveys Close',
                'postcode': 'BH24 4BP',
              };

              final result = ProprietorAddress.fromJson(json);

              expect(
                result.line1,
                '87 Doveys Close',
              );

              expect(
                result.line2,
                isNull,
              );

              expect(
                result.line3,
                isNull,
              );

              expect(
                result.line4,
                isNull,
              );

              expect(
                result.line5,
                isNull,
              );

              expect(
                result.postcode,
                'BH24 4BP',
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
              final model = ProprietorAddress(
                line1: '87 Doveys Close',
                line2: 'Address Line 2',
                line3: 'Address Line 3',
                line4: 'Ringwood',
                line5: 'Hampshire',
                postcode: 'BH24 4BP',
              );

              final result = model.toJson();

              expect(
                result['line_1'],
                '87 Doveys Close',
              );

              expect(
                result['line_2'],
                'Address Line 2',
              );

              expect(
                result['line_3'],
                'Address Line 3',
              );

              expect(
                result['line_4'],
                'Ringwood',
              );

              expect(
                result['line_5'],
                'Hampshire',
              );

              expect(
                result['postcode'],
                'BH24 4BP',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = ProprietorAddress(
                line1: '87 Doveys Close',
                postcode: 'BH24 4BP',
              );

              final result = model.toJson();

              expect(
                result['line_1'],
                '87 Doveys Close',
              );

              expect(
                result['line_2'],
                isNull,
              );

              expect(
                result['line_3'],
                isNull,
              );

              expect(
                result['line_4'],
                isNull,
              );

              expect(
                result['line_5'],
                isNull,
              );

              expect(
                result['postcode'],
                'BH24 4BP',
              );
            },
          );
        },
      );
    },
  );
}
