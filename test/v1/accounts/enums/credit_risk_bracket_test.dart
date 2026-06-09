import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  CreditRiskBracket.high: 'HIGH',
  CreditRiskBracket.low: 'LOW',
  CreditRiskBracket.mid: 'MID',
  CreditRiskBracket.unknown: 'UNKNOWN',
};

void main() {
  group(
    'CreditRiskBracket',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  CreditRiskBracket.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => CreditRiskBracket.fromJson(''),
                throwsA(isA<ArgumentError>()),
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should map the enum value to a json string',
            () {
              for (final entry in _cases.entries) {
                expect(
                  entry.key.toJson(),
                  entry.value,
                );
              }
            },
          );
        },
      );
    },
  );
}
