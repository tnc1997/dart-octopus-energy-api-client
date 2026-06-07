import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountElectricityMeterPointMeter',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'serial_number': '12L3456789',
                'registers': [
                  {
                    'identifier': '01',
                    'is_settlement_register': true,
                    'rate': '0.35',
                  }
                ],
              };

              final result = AccountElectricityMeterPointMeter.fromJson(json);

              expect(
                result.serialNumber,
                '12L3456789',
              );

              expect(
                result.registers,
                isA<List<AccountRegister>>().having(
                  (registers) => registers.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'serial_number': '12L3456789',
              };

              final result = AccountElectricityMeterPointMeter.fromJson(json);

              expect(
                result.serialNumber,
                '12L3456789',
              );

              expect(
                result.registers,
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
              final model = AccountElectricityMeterPointMeter(
                serialNumber: '12L3456789',
                registers: [
                  AccountRegister(
                    identifier: '01',
                    isSettlementRegister: true,
                    rate: '0.35',
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['serial_number'],
                '12L3456789',
              );

              expect(
                result['registers'],
                isA<List<Map<String, dynamic>>>().having(
                  (registers) => registers.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountElectricityMeterPointMeter(
                serialNumber: '12L3456789',
              );

              final result = model.toJson();

              expect(
                result['serial_number'],
                '12L3456789',
              );

              expect(
                result['registers'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
