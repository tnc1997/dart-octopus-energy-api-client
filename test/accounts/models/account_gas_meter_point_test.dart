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
                    'tariff_code': 'G-1R-VAR-22-11-01-A',
                    'valid_from': '2023-01-01T00:00:00.000Z',
                  }
                ],
                'consumption_standard': 12000,
                'meters': [
                  {
                    'serial_number': '12L3456789',
                  }
                ],
                'mprn': '1234567890',
              };

              final result = AccountGasMeterPoint.fromJson(json);

              expect(
                result.agreements,
                hasLength(1),
              );

              expect(
                result.consumptionStandard,
                12000,
              );

              expect(
                result.meters,
                hasLength(1),
              );

              expect(
                result.mprn,
                '1234567890',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mprn': '1234567890',
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
                '1234567890',
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
                    tariffCode: 'G-1R-VAR-22-11-01-A',
                    validFrom: DateTime.parse('2023-01-01T00:00:00.000Z'),
                  ),
                ],
                consumptionStandard: 12000,
                meters: [
                  AccountGasMeterPointMeter(
                    serialNumber: '12L3456789',
                  ),
                ],
                mprn: '1234567890',
              );

              final result = model.toJson();

              expect(
                result['agreements'],
                hasLength(1),
              );

              expect(
                result['consumption_standard'],
                12000,
              );

              expect(
                result['meters'],
                hasLength(1),
              );

              expect(
                result['mprn'],
                '1234567890',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountGasMeterPoint(
                mprn: '1234567890',
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
                '1234567890',
              );
            },
          );
        },
      );
    },
  );
}
