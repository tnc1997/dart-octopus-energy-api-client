import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'SampleConsumption',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'dual_fuel_dual_rate': {
                  'electricity_day': 2436,
                  'electricity_night': 1764,
                  'gas_standard': 12000,
                },
                'dual_fuel_single_rate': {
                  'electricity_standard': 3100,
                  'gas_standard': 13000,
                },
                'electricity_dual_rate': {
                  'electricity_day': 2536,
                  'electricity_night': 1864,
                },
                'electricity_single_rate': {
                  'electricity_standard': 3200,
                },
              };

              final result = SampleConsumption.fromJson(json);

              expect(
                result.dualFuelDualRate,
                {
                  'electricity_day': 2436.0,
                  'electricity_night': 1764.0,
                  'gas_standard': 12000.0,
                },
              );

              expect(
                result.dualFuelSingleRate,
                {
                  'electricity_standard': 3100.0,
                  'gas_standard': 13000.0,
                },
              );

              expect(
                result.electricityDualRate,
                {
                  'electricity_day': 2536.0,
                  'electricity_night': 1864.0,
                },
              );

              expect(
                result.electricitySingleRate,
                {
                  'electricity_standard': 3200.0,
                },
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
              final model = SampleConsumption(
                dualFuelDualRate: {
                  'electricity_day': 2436.0,
                  'electricity_night': 1764.0,
                  'gas_standard': 12000.0,
                },
                dualFuelSingleRate: {
                  'electricity_standard': 3100.0,
                  'gas_standard': 13000.0,
                },
                electricityDualRate: {
                  'electricity_day': 2536.0,
                  'electricity_night': 1864.0,
                },
                electricitySingleRate: {
                  'electricity_standard': 3200.0,
                },
              );

              final result = model.toJson();

              expect(
                result['dual_fuel_dual_rate'],
                {
                  'electricity_day': 2436.0,
                  'electricity_night': 1764.0,
                  'gas_standard': 12000.0,
                },
              );

              expect(
                result['dual_fuel_single_rate'],
                {
                  'electricity_standard': 3100.0,
                  'gas_standard': 13000.0,
                },
              );

              expect(
                result['electricity_dual_rate'],
                {
                  'electricity_day': 2536.0,
                  'electricity_night': 1864.0,
                },
              );

              expect(
                result['electricity_single_rate'],
                {
                  'electricity_standard': 3200.0,
                },
              );
            },
          );
        },
      );
    },
  );
}
