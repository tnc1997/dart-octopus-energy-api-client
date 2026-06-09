import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'GasTariff',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'code': 'G-1R-VAR-17-01-11-C',
                'dual_fuel_discount_exc_vat': 8.0,
                'dual_fuel_discount_inc_vat': 8.1,
                'exit_fees_exc_vat': 9.0,
                'exit_fees_inc_vat': 9.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'online_discount_exc_vat': 7.0,
                'online_discount_inc_vat': 7.1,
                'standing_charge_exc_vat': 22.0,
                'standing_charge_inc_vat': 22.1,
                'standard_unit_rate_exc_vat': 3.0,
                'standard_unit_rate_inc_vat': 3.1,
              };

              final result = GasTariff.fromJson(json);

              expect(
                result.code,
                'G-1R-VAR-17-01-11-C',
              );

              expect(
                result.dualFuelDiscountExcVat,
                8.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                8.1,
              );

              expect(
                result.exitFeesExcVat,
                9.0,
              );

              expect(
                result.exitFeesIncVat,
                9.1,
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
                7.0,
              );

              expect(
                result.onlineDiscountIncVat,
                7.1,
              );

              expect(
                result.standingChargeExcVat,
                22.0,
              );

              expect(
                result.standingChargeIncVat,
                22.1,
              );

              expect(
                result.standardUnitRateExcVat,
                3.0,
              );

              expect(
                result.standardUnitRateIncVat,
                3.1,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'code': 'G-1R-VAR-17-01-11-C',
                'dual_fuel_discount_exc_vat': 8.0,
                'dual_fuel_discount_inc_vat': 8.1,
                'exit_fees_exc_vat': 9.0,
                'exit_fees_inc_vat': 9.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'online_discount_exc_vat': 7.0,
                'online_discount_inc_vat': 7.1,
              };

              final result = GasTariff.fromJson(json);

              expect(
                result.code,
                'G-1R-VAR-17-01-11-C',
              );

              expect(
                result.dualFuelDiscountExcVat,
                8.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                8.1,
              );

              expect(
                result.exitFeesExcVat,
                9.0,
              );

              expect(
                result.exitFeesIncVat,
                9.1,
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
                7.0,
              );

              expect(
                result.onlineDiscountIncVat,
                7.1,
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
              final model = GasTariff(
                code: 'G-1R-VAR-17-01-11-C',
                dualFuelDiscountExcVat: 8.0,
                dualFuelDiscountIncVat: 8.1,
                exitFeesExcVat: 9.0,
                exitFeesIncVat: 9.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                onlineDiscountExcVat: 7.0,
                onlineDiscountIncVat: 7.1,
                standingChargeExcVat: 22.0,
                standingChargeIncVat: 22.1,
                standardUnitRateExcVat: 3.0,
                standardUnitRateIncVat: 3.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'G-1R-VAR-17-01-11-C',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                8.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                8.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                9.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                9.1,
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
                7.0,
              );

              expect(
                result['online_discount_inc_vat'],
                7.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                22.0,
              );

              expect(
                result['standing_charge_inc_vat'],
                22.1,
              );

              expect(
                result['standard_unit_rate_exc_vat'],
                3.0,
              );

              expect(
                result['standard_unit_rate_inc_vat'],
                3.1,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = GasTariff(
                code: 'G-1R-VAR-17-01-11-C',
                dualFuelDiscountExcVat: 8.0,
                dualFuelDiscountIncVat: 8.1,
                exitFeesExcVat: 9.0,
                exitFeesIncVat: 9.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                onlineDiscountExcVat: 7.0,
                onlineDiscountIncVat: 7.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'G-1R-VAR-17-01-11-C',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                8.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                8.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                9.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                9.1,
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
                7.0,
              );

              expect(
                result['online_discount_inc_vat'],
                7.1,
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
