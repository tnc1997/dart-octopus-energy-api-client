import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

class _AccountMeterPointMeter extends AccountMeterPointMeter {
  _AccountMeterPointMeter({
    required super.serialNumber,
  });
}

class _AccountMeterPoint extends AccountMeterPoint<_AccountMeterPointMeter> {
  _AccountMeterPoint({
    super.agreements,
    super.consumptionStandard,
    super.meters,
  });
}

void main() {
  group(
    'AccountMeterPoint',
    () {
      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = _AccountMeterPoint(
                agreements: [
                  AccountAgreement(
                    tariffCode: 'E-1R-VAR-17-01-11-A',
                    validFrom: DateTime.parse('2018-05-16T22:30:00Z'),
                  ),
                ],
                consumptionStandard: 3100,
                meters: [
                  _AccountMeterPointMeter(
                    serialNumber: '12L3456789',
                  ),
                ],
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
                result['meters'],
                isA<List<Map<String, dynamic>>>().having(
                  (meters) => meters.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = _AccountMeterPoint();

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
            },
          );
        },
      );
    },
  );
}
