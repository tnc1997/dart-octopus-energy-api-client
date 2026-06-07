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
                'meter_serial_number': 'Z16N389556',
                'registers': [
                  {
                    'register_identifier': '7',
                    'unit_rate': '22.4',
                  }
                ],
                'standing_charge': '3.25',
                'unit_rate': '15.6',
              };

              final result =
                  BusinessTariffRenewalBespokeTariffRate.fromJson(json);

              expect(
                result.meterSerialNumber,
                'Z16N389556',
              );

              expect(
                result.registers,
                isA<List<BusinessTariffRenewalBespokeRegisterRate>>().having(
                  (registers) => registers.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.standingCharge,
                3.25,
              );

              expect(
                result.unitRate,
                15.6,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'meter_serial_number': 'GA1244364577',
                'standing_charge': '3.25',
              };

              final result =
                  BusinessTariffRenewalBespokeTariffRate.fromJson(json);

              expect(
                result.meterSerialNumber,
                'GA1244364577',
              );

              expect(
                result.registers,
                isNull,
              );

              expect(
                result.standingCharge,
                3.25,
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
                meterSerialNumber: 'Z16N389556',
                registers: [
                  BusinessTariffRenewalBespokeRegisterRate(
                    registerIdentifier: '7',
                    unitRate: 22.4,
                  ),
                ],
                standingCharge: 3.25,
                unitRate: 15.6,
              );

              final result = model.toJson();

              expect(
                result['meter_serial_number'],
                'Z16N389556',
              );

              expect(
                result['registers'],
                isA<List<Map<String, dynamic>>>().having(
                  (registers) => registers.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['standing_charge'],
                '3.25',
              );

              expect(
                result['unit_rate'],
                '15.6',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalBespokeTariffRate(
                meterSerialNumber: 'GA1244364577',
                standingCharge: 3.25,
              );

              final result = model.toJson();

              expect(
                result['meter_serial_number'],
                'GA1244364577',
              );

              expect(
                result['registers'],
                isNull,
              );

              expect(
                result['standing_charge'],
                '3.25',
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
