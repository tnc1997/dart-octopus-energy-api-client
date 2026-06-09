import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  BusinessType.charity: 'CHARITY',
  BusinessType.government: 'GOVERNMENT',
  BusinessType.limited: 'LIMITED',
  BusinessType.partnership: 'PARTNERSHIP',
  BusinessType.soleTrader: 'SOLE_TRADER',
};

void main() {
  group(
    'BusinessType',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  BusinessType.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => BusinessType.fromJson(''),
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
