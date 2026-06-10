import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'StandardElectricityTariff',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'code': 'E-1R-VAR-17-01-11-A',
                'dual_fuel_discount_exc_vat': 2.0,
                'dual_fuel_discount_inc_vat': 2.1,
                'exit_fees_exc_vat': 3.0,
                'exit_fees_inc_vat': 3.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'online_discount_exc_vat': 1.0,
                'online_discount_inc_vat': 1.1,
                'standing_charge_exc_vat': 20.0,
                'standing_charge_inc_vat': 21.0,
                'standard_unit_rate_exc_vat': 10.85,
                'standard_unit_rate_inc_vat': 11.39,
              };

              final result = StandardElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result.dualFuelDiscountExcVat,
                2.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                2.1,
              );

              expect(
                result.exitFeesExcVat,
                3.0,
              );

              expect(
                result.exitFeesIncVat,
                3.1,
              );

              expect(
                result.exitFeesType,
                'NONE',
              );

              expect(
                result.links,
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.onlineDiscountExcVat,
                1.0,
              );

              expect(
                result.onlineDiscountIncVat,
                1.1,
              );

              expect(
                result.standingChargeExcVat,
                20.0,
              );

              expect(
                result.standingChargeIncVat,
                21.0,
              );

              expect(
                result.standardUnitRateExcVat,
                10.85,
              );

              expect(
                result.standardUnitRateIncVat,
                11.39,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'code': 'E-1R-VAR-17-01-11-A',
                'dual_fuel_discount_exc_vat': 2.0,
                'dual_fuel_discount_inc_vat': 2.1,
                'exit_fees_exc_vat': 3.0,
                'exit_fees_inc_vat': 3.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'online_discount_exc_vat': 1.0,
                'online_discount_inc_vat': 1.1,
              };

              final result = StandardElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result.dualFuelDiscountExcVat,
                2.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                2.1,
              );

              expect(
                result.exitFeesExcVat,
                3.0,
              );

              expect(
                result.exitFeesIncVat,
                3.1,
              );

              expect(
                result.exitFeesType,
                'NONE',
              );

              expect(
                result.links,
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.onlineDiscountExcVat,
                1.0,
              );

              expect(
                result.onlineDiscountIncVat,
                1.1,
              );

              expect(
                result.standingChargeExcVat,
                isNull,
              );

              expect(
                result.standingChargeIncVat,
                isNull,
              );

              expect(
                result.standardUnitRateExcVat,
                isNull,
              );

              expect(
                result.standardUnitRateIncVat,
                isNull,
              );
            },
          );

          test(
            'should return model from an empty json object',
            () {
              // The products endpoint returns an empty object for a
              // payment-method that has no tariff, e.g.
              // 'direct_debit_quarterly': {}. Deserialization must not throw.
              final result = StandardElectricityTariff.fromJson(
                <String, dynamic>{},
              );

              expect(
                result.code,
                isNull,
              );

              expect(
                result.dualFuelDiscountExcVat,
                isNull,
              );

              expect(
                result.dualFuelDiscountIncVat,
                isNull,
              );

              expect(
                result.exitFeesExcVat,
                isNull,
              );

              expect(
                result.exitFeesIncVat,
                isNull,
              );

              expect(
                result.exitFeesType,
                isNull,
              );

              expect(
                result.links,
                isNull,
              );

              expect(
                result.onlineDiscountExcVat,
                isNull,
              );

              expect(
                result.onlineDiscountIncVat,
                isNull,
              );

              expect(
                result.standingChargeExcVat,
                isNull,
              );

              expect(
                result.standingChargeIncVat,
                isNull,
              );

              expect(
                result.standardUnitRateExcVat,
                isNull,
              );

              expect(
                result.standardUnitRateIncVat,
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
              final model = StandardElectricityTariff(
                code: 'E-1R-VAR-17-01-11-A',
                dualFuelDiscountExcVat: 2.0,
                dualFuelDiscountIncVat: 2.1,
                exitFeesExcVat: 3.0,
                exitFeesIncVat: 3.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                onlineDiscountExcVat: 1.0,
                onlineDiscountIncVat: 1.1,
                standingChargeExcVat: 20.0,
                standingChargeIncVat: 21.0,
                standardUnitRateExcVat: 10.85,
                standardUnitRateIncVat: 11.39,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                2.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                2.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                3.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                3.1,
              );

              expect(
                result['exit_fees_type'],
                'NONE',
              );

              expect(
                result['links'],
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['online_discount_exc_vat'],
                1.0,
              );

              expect(
                result['online_discount_inc_vat'],
                1.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                20.0,
              );

              expect(
                result['standing_charge_inc_vat'],
                21.0,
              );

              expect(
                result['standard_unit_rate_exc_vat'],
                10.85,
              );

              expect(
                result['standard_unit_rate_inc_vat'],
                11.39,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = StandardElectricityTariff(
                code: 'E-1R-VAR-17-01-11-A',
                dualFuelDiscountExcVat: 2.0,
                dualFuelDiscountIncVat: 2.1,
                exitFeesExcVat: 3.0,
                exitFeesIncVat: 3.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                onlineDiscountExcVat: 1.0,
                onlineDiscountIncVat: 1.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                2.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                2.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                3.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                3.1,
              );

              expect(
                result['exit_fees_type'],
                'NONE',
              );

              expect(
                result['links'],
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['online_discount_exc_vat'],
                1.0,
              );

              expect(
                result['online_discount_inc_vat'],
                1.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                isNull,
              );

              expect(
                result['standing_charge_inc_vat'],
                isNull,
              );

              expect(
                result['standard_unit_rate_exc_vat'],
                isNull,
              );

              expect(
                result['standard_unit_rate_inc_vat'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
