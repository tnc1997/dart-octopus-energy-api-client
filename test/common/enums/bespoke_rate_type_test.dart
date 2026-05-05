import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  BespokeRateType.capacityMarket: 'CAPACITY_MARKET',
  BespokeRateType.eco7Day: 'ECO7_DAY',
  BespokeRateType.eco7Night: 'ECO7_NIGHT',
  BespokeRateType.evDevice: 'EV_DEVICE',
  BespokeRateType.nuclearRab: 'NUCLEAR_RAB',
  BespokeRateType.offPeak: 'OFF_PEAK',
  BespokeRateType.standard: 'STANDARD',
  BespokeRateType.summerOffPeak: 'SUMMER_OFF_PEAK',
  BespokeRateType.summerPeak: 'SUMMER_PEAK',
  BespokeRateType.tnous: 'TNUOS',
  BespokeRateType.winterOffPeak: 'WINTER_OFF_PEAK',
  BespokeRateType.winterPeak: 'WINTER_PEAK',
};

void main() {
  group(
    'BespokeRateType',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  BespokeRateType.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => BespokeRateType.fromJson(''),
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
