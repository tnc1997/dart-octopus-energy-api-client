import 'package:octopus_energy_api_client/v1.dart';
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
                'dual_fuel_dual_rate': {
                  'annual_cost_inc_vat': 60000,
                  'annual_cost_exc_vat': 55000,
                },
                'dual_fuel_single_rate': {
                  'annual_cost_inc_vat': 70000,
                  'annual_cost_exc_vat': 65000,
                },
                'electricity_dual_rate': {
                  'annual_cost_inc_vat': 80000,
                  'annual_cost_exc_vat': 75000,
                },
                'electricity_single_rate': {
                  'annual_cost_inc_vat': 90000,
                  'annual_cost_exc_vat': 85000,
                },
              };

              final result = SampleQuotes.fromJson(json);

              expect(
                result.dualFuelDualRate,
                {
                  'annual_cost_inc_vat': 60000.0,
                  'annual_cost_exc_vat': 55000.0,
                },
              );

              expect(
                result.dualFuelSingleRate,
                {
                  'annual_cost_inc_vat': 70000.0,
                  'annual_cost_exc_vat': 65000.0,
                },
              );

              expect(
                result.electricityDualRate,
                {
                  'annual_cost_inc_vat': 80000.0,
                  'annual_cost_exc_vat': 75000.0,
                },
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

          test(
            'should return model from json with omitted rates',
            () {
              final json = <String, dynamic>{};

              final result = SampleQuotes.fromJson(json);

              expect(
                result.dualFuelDualRate,
                isNull,
              );

              expect(
                result.dualFuelSingleRate,
                isNull,
              );

              expect(
                result.electricityDualRate,
                isNull,
              );

              expect(
                result.electricitySingleRate,
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
              final model = SampleQuotes(
                dualFuelDualRate: {
                  'annual_cost_inc_vat': 60000.0,
                  'annual_cost_exc_vat': 55000.0,
                },
                dualFuelSingleRate: {
                  'annual_cost_inc_vat': 70000.0,
                  'annual_cost_exc_vat': 65000.0,
                },
                electricityDualRate: {
                  'annual_cost_inc_vat': 80000.0,
                  'annual_cost_exc_vat': 75000.0,
                },
                electricitySingleRate: {
                  'annual_cost_inc_vat': 90000.0,
                  'annual_cost_exc_vat': 85000.0,
                },
              );

              final result = model.toJson();

              expect(
                result['dual_fuel_dual_rate'],
                {
                  'annual_cost_inc_vat': 60000.0,
                  'annual_cost_exc_vat': 55000.0,
                },
              );

              expect(
                result['dual_fuel_single_rate'],
                {
                  'annual_cost_inc_vat': 70000.0,
                  'annual_cost_exc_vat': 65000.0,
                },
              );

              expect(
                result['electricity_dual_rate'],
                {
                  'annual_cost_inc_vat': 80000.0,
                  'annual_cost_exc_vat': 75000.0,
                },
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
