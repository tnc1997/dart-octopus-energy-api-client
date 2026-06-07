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
                    'tariff_code': 'E-1R-VAR-17-01-11-A',
                    'valid_from': '2018-05-16T22:30:00Z',
                  }
                ],
                'consumption_standard': 3100,
                'is_export': false,
                'meters': [
                  {
                    'serial_number': '12L3456789',
                  }
                ],
                'mpan': '2000024512368',
                'profile_class': 1,
              };

              final result = AccountElectricityMeterPoint.fromJson(json);

              expect(
                result.agreements,
                isA<List<AccountAgreement>>().having(
                  (agreements) => agreements.length,
                  'length',
                  1,
                ),
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
                isA<List<AccountElectricityMeterPointMeter>>().having(
                  (meters) => meters.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.mpan,
                '2000024512368',
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
                'mpan': '2000024512368',
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
                '2000024512368',
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
                    tariffCode: 'E-1R-VAR-17-01-11-A',
                    validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
                  ),
                ],
                consumptionStandard: 3100,
                isExport: false,
                meters: [
                  AccountElectricityMeterPointMeter(
                    serialNumber: '12L3456789',
                  ),
                ],
                mpan: '2000024512368',
                profileClass: 1,
              );

              final result = model.toJson();

              expect(
                result['agreements'],
                isA<List<Map<String, dynamic>>>().having(
                  (agreements) => agreements.length,
                  'length',
                  1,
                ),
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
                isA<List<Map<String, dynamic>>>().having(
                  (meters) => meters.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['mpan'],
                '2000024512368',
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
                mpan: '2000024512368',
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
                '2000024512368',
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
