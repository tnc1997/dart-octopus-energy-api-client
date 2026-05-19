import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountElectricityMeterPoint',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'agreements': [
                  {
                    'tariff_code': 'E-1R-VAR-22-11-01-A',
                    'valid_from': '2023-01-01T00:00:00.000Z',
                  }
                ],
                'consumption_standard': 3100,
                'is_export': false,
                'meters': [
                  {
                    'serial_number': '12L3456789',
                  }
                ],
                'mpan': '1234567890123',
                'profile_class': 1,
              };

              final result = AccountElectricityMeterPoint.fromJson(json);

              expect(
                result.agreements,
                hasLength(1),
              );

              expect(
                result.consumptionStandard,
                3100,
              );

              expect(
                result.isExport,
                isFalse,
              );

              expect(
                result.meters,
                hasLength(1),
              );

              expect(
                result.mpan,
                '1234567890123',
              );

              expect(
                result.profileClass,
                1,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mpan': '1234567890123',
              };

              final result = AccountElectricityMeterPoint.fromJson(json);

              expect(
                result.agreements,
                isNull,
              );

              expect(
                result.consumptionStandard,
                isNull,
              );

              expect(
                result.isExport,
                isNull,
              );

              expect(
                result.meters,
                isNull,
              );

              expect(
                result.mpan,
                '1234567890123',
              );

              expect(
                result.profileClass,
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
              final model = AccountElectricityMeterPoint(
                agreements: [
                  AccountAgreement(
                    tariffCode: 'E-1R-VAR-22-11-01-A',
                    validFrom: DateTime.parse('2023-01-01T00:00:00.000Z'),
                  ),
                ],
                consumptionStandard: 3100,
                isExport: false,
                meters: [
                  AccountElectricityMeterPointMeter(
                    serialNumber: '12L3456789',
                  ),
                ],
                mpan: '1234567890123',
                profileClass: 1,
              );

              final result = model.toJson();

              expect(
                result['agreements'],
                hasLength(1),
              );

              expect(
                result['consumption_standard'],
                3100,
              );

              expect(
                result['is_export'],
                isFalse,
              );

              expect(
                result['meters'],
                hasLength(1),
              );

              expect(
                result['mpan'],
                '1234567890123',
              );

              expect(
                result['profile_class'],
                1,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountElectricityMeterPoint(
                mpan: '1234567890123',
              );

              final result = model.toJson();

              expect(
                result['agreements'],
                isNull,
              );

              expect(
                result['consumption_standard'],
                isNull,
              );

              expect(
                result['is_export'],
                isNull,
              );

              expect(
                result['meters'],
                isNull,
              );

              expect(
                result['mpan'],
                '1234567890123',
              );

              expect(
                result['profile_class'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
