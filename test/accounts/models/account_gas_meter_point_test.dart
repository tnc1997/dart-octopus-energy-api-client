import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountGasMeterPoint',
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
                    'tariff_code': 'G-1R-VAR-17-01-11-A',
                    'valid_from': '2018-05-16T22:30:00Z',
                  }
                ],
                'consumption_standard': 12500,
                'meters': [
                  {
                    'serial_number': '12L3456789',
                  }
                ],
                'mprn': '3016362107',
              };

              final result = AccountGasMeterPoint.fromJson(json);

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
                12500,
              );

              expect(
                result.meters,
                isA<List<AccountGasMeterPointMeter>>().having(
                  (meters) => meters.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.mprn,
                '3016362107',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mprn': '3016362107',
              };

              final result = AccountGasMeterPoint.fromJson(json);

              expect(
                result.agreements,
                isNull,
              );

              expect(
                result.consumptionStandard,
                isNull,
              );

              expect(
                result.meters,
                isNull,
              );

              expect(
                result.mprn,
                '3016362107',
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
              final model = AccountGasMeterPoint(
                agreements: [
                  AccountAgreement(
                    tariffCode: 'G-1R-VAR-17-01-11-A',
                    validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
                  ),
                ],
                consumptionStandard: 12500,
                meters: [
                  AccountGasMeterPointMeter(
                    serialNumber: '12L3456789',
                  ),
                ],
                mprn: '3016362107',
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
                12500,
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
                result['mprn'],
                '3016362107',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountGasMeterPoint(
                mprn: '3016362107',
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
                result['meters'],
                isNull,
              );

              expect(
                result['mprn'],
                '3016362107',
              );
            },
          );
        },
      );
    },
  );
}
