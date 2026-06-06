import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'SampleQuotes',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'dual_fuel_dual_rate': <String, dynamic>{},
                'dual_fuel_single_rate': <String, dynamic>{},
                'electricity_dual_rate': <String, dynamic>{},
                'electricity_single_rate': {
                  'annual_cost_inc_vat': 90000,
                  'annual_cost_exc_vat': 85000,
                },
              };

              final result = SampleQuotes.fromJson(json);

              expect(
                result.dualFuelDualRate,
                <String, double>{},
              );

              expect(
                result.dualFuelSingleRate,
                <String, double>{},
              );

              expect(
                result.electricityDualRate,
                <String, double>{},
              );

              expect(
                result.electricitySingleRate,
                {
                  'annual_cost_inc_vat': 90000.0,
                  'annual_cost_exc_vat': 85000.0,
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
              final model = SampleQuotes(
                dualFuelDualRate: {},
                dualFuelSingleRate: {},
                electricityDualRate: {},
                electricitySingleRate: {
                  'annual_cost_inc_vat': 90000.0,
                  'annual_cost_exc_vat': 85000.0,
                },
              );

              final result = model.toJson();

              expect(
                result['dual_fuel_dual_rate'],
                <String, double>{},
              );

              expect(
                result['dual_fuel_single_rate'],
                <String, double>{},
              );

              expect(
                result['electricity_dual_rate'],
                <String, double>{},
              );

              expect(
                result['electricity_single_rate'],
                {
                  'annual_cost_inc_vat': 90000.0,
                  'annual_cost_exc_vat': 85000.0,
                },
              );
            },
          );
        },
      );
    },
  );
}
