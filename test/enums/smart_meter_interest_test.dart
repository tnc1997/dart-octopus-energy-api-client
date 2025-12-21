import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  SmartMeterInterest.smets2InterestInterested: 'SMETS2_INTEREST_INTERESTED',
  SmartMeterInterest.smets2InterestNotAtTheMoment:
      'SMETS2_INTEREST_NOT_AT_THE_MOMENT',
  SmartMeterInterest.smets2InterestNotInterested:
      'SMETS2_INTEREST_NOT_INTERESTED',
  SmartMeterInterest.smets2InterestPriority: 'SMETS2_INTEREST_PRIORITY',
};

void main() {
  group(
    'SmartMeterInterest',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  SmartMeterInterest.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => SmartMeterInterest.fromJson(''),
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
