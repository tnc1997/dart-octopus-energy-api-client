import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  BespokeRateType.capacityMarket: 'CAPACITY_MARKET',
  BespokeRateType.eco7Day: 'ECO7_DAY',
  BespokeRateType.eco7Night: 'ECO7_NIGHT',
  BespokeRateType.evDevice: 'EV_DEVICE',
  BespokeRateType.evDeviceOffPeak: 'EV_DEVICE_OFF_PEAK',
  BespokeRateType.evDevicePeak: 'EV_DEVICE_PEAK',
  BespokeRateType.hmcGuaranteeAdvance: 'HMC_GUARANTEE_ADVANCE',
  BespokeRateType.hmcGuaranteeFull: 'HMC_GUARANTEE_FULL',
  BespokeRateType.nuclearRab: 'NUCLEAR_RAB',
  BespokeRateType.offPeak: 'OFF_PEAK',
  BespokeRateType.offPeakWeekends: 'OFF_PEAK_WEEKENDS',
  BespokeRateType.peak: 'PEAK',
  BespokeRateType.standard: 'STANDARD',
  BespokeRateType.summer: 'SUMMER',
  BespokeRateType.summerOffPeak: 'SUMMER_OFF_PEAK',
  BespokeRateType.summerPeak: 'SUMMER_PEAK',
  BespokeRateType.summerWeekendsOffPeakWinter:
      'SUMMER_WEEKENDS_OFF_PEAK_WINTER',
  BespokeRateType.tnuos: 'TNUOS',
  BespokeRateType.weekday: 'WEEKDAY',
  BespokeRateType.weekendsOther: 'WEEKENDS_OTHER',
  BespokeRateType.winter: 'WINTER',
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
