import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BusinessTariffRenewalBespokeTariffRate',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'meter_serial_number': '12L3456789',
                'registers': [
                  {
                    'unit_rate': '0.35',
                  }
                ],
                'standing_charge': '0.50',
                'unit_rate': '0.40',
              };

              final result =
                  BusinessTariffRenewalBespokeTariffRate.fromJson(json);

              expect(
                result.meterSerialNumber,
                '12L3456789',
              );

              expect(
                result.registers,
                hasLength(1),
              );

              expect(
                result.standingCharge,
                0.50,
              );

              expect(
                result.unitRate,
                0.40,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'meter_serial_number': '12L3456789',
                'standing_charge': '0.50',
              };

              final result =
                  BusinessTariffRenewalBespokeTariffRate.fromJson(json);

              expect(
                result.meterSerialNumber,
                '12L3456789',
              );

              expect(
                result.registers,
                isNull,
              );

              expect(
                result.standingCharge,
                0.50,
              );

              expect(
                result.unitRate,
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
              final model = BusinessTariffRenewalBespokeTariffRate(
                meterSerialNumber: '12L3456789',
                registers: [
                  BusinessTariffRenewalBespokeRegisterRate(
                    unitRate: 0.35,
                  ),
                ],
                standingCharge: 0.50,
                unitRate: 0.40,
              );

              final result = model.toJson();

              expect(
                result['meter_serial_number'],
                '12L3456789',
              );

              expect(
                result['registers'],
                hasLength(1),
              );

              expect(
                result['standing_charge'],
                '0.5',
              );

              expect(
                result['unit_rate'],
                '0.4',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalBespokeTariffRate(
                meterSerialNumber: '12L3456789',
                standingCharge: 0.50,
              );

              final result = model.toJson();

              expect(
                result['meter_serial_number'],
                '12L3456789',
              );

              expect(
                result['registers'],
                isNull,
              );

              expect(
                result['standing_charge'],
                '0.5',
              );

              expect(
                result['unit_rate'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
