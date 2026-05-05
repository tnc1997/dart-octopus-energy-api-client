import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  SmartOnboardingProductType.agile: 'AGILE',
  SmartOnboardingProductType.airaZero: 'AIRA_ZERO',
  SmartOnboardingProductType.cosyOctopus: 'COSY_OCTOPUS',
  SmartOnboardingProductType.goGreen: 'GO_GREEN',
  SmartOnboardingProductType.intelligentOctopus: 'INTELLIGENT_OCTOPUS',
  SmartOnboardingProductType.octopusFlux: 'OCTOPUS_FLUX',
  SmartOnboardingProductType.octopusGo: 'OCTOPUS_GO',
  SmartOnboardingProductType.teslaImport: 'TESLA_IMPORT',
  SmartOnboardingProductType.tracker: 'TRACKER',
};

void main() {
  group(
    'SmartOnboardingProductType',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  SmartOnboardingProductType.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => SmartOnboardingProductType.fromJson(''),
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
