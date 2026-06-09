import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Eco7ElectricityTariff',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'code': 'E-2R-VAR-17-01-11-B',
                'day_unit_rate_exc_vat': 18.0,
                'day_unit_rate_inc_vat': 18.1,
                'dual_fuel_discount_exc_vat': 5.0,
                'dual_fuel_discount_inc_vat': 5.1,
                'exit_fees_exc_vat': 6.0,
                'exit_fees_inc_vat': 6.1,
                'exit_fees_type': 'EXIT_FEES',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'night_unit_rate_exc_vat': 9.0,
                'night_unit_rate_inc_vat': 9.1,
                'online_discount_exc_vat': 4.0,
                'online_discount_inc_vat': 4.1,
                'standing_charge_exc_vat': 21.0,
                'standing_charge_inc_vat': 21.1,
              };

              final result = Eco7ElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-2R-VAR-17-01-11-B',
              );

              expect(
                result.dayUnitRateExcVat,
                18.0,
              );

              expect(
                result.dayUnitRateIncVat,
                18.1,
              );

              expect(
                result.dualFuelDiscountExcVat,
                5.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                5.1,
              );

              expect(
                result.exitFeesExcVat,
                6.0,
              );

              expect(
                result.exitFeesIncVat,
                6.1,
              );

              expect(
                result.exitFeesType,
                'EXIT_FEES',
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
                result.nightUnitRateExcVat,
                9.0,
              );

              expect(
                result.nightUnitRateIncVat,
                9.1,
              );

              expect(
                result.onlineDiscountExcVat,
                4.0,
              );

              expect(
                result.onlineDiscountIncVat,
                4.1,
              );

              expect(
                result.standingChargeExcVat,
                21.0,
              );

              expect(
                result.standingChargeIncVat,
                21.1,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'code': 'E-2R-VAR-17-01-11-B',
                'dual_fuel_discount_exc_vat': 5.0,
                'dual_fuel_discount_inc_vat': 5.1,
                'exit_fees_exc_vat': 6.0,
                'exit_fees_inc_vat': 6.1,
                'exit_fees_type': 'EXIT_FEES',
                'links': [
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                    'method': 'GET',
                    'rel': 'standard_unit_rates',
                  }
                ],
                'online_discount_exc_vat': 4.0,
                'online_discount_inc_vat': 4.1,
              };

              final result = Eco7ElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-2R-VAR-17-01-11-B',
              );

              expect(
                result.dayUnitRateExcVat,
                isNull,
              );

              expect(
                result.dayUnitRateIncVat,
                isNull,
              );

              expect(
                result.dualFuelDiscountExcVat,
                5.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                5.1,
              );

              expect(
                result.exitFeesExcVat,
                6.0,
              );

              expect(
                result.exitFeesIncVat,
                6.1,
              );

              expect(
                result.exitFeesType,
                'EXIT_FEES',
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
                result.nightUnitRateExcVat,
                isNull,
              );

              expect(
                result.nightUnitRateIncVat,
                isNull,
              );

              expect(
                result.onlineDiscountExcVat,
                4.0,
              );

              expect(
                result.onlineDiscountIncVat,
                4.1,
              );

              expect(
                result.standingChargeExcVat,
                isNull,
              );

              expect(
                result.standingChargeIncVat,
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
              final model = Eco7ElectricityTariff(
                code: 'E-2R-VAR-17-01-11-B',
                dayUnitRateExcVat: 18.0,
                dayUnitRateIncVat: 18.1,
                dualFuelDiscountExcVat: 5.0,
                dualFuelDiscountIncVat: 5.1,
                exitFeesExcVat: 6.0,
                exitFeesIncVat: 6.1,
                exitFeesType: 'EXIT_FEES',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                nightUnitRateExcVat: 9.0,
                nightUnitRateIncVat: 9.1,
                onlineDiscountExcVat: 4.0,
                onlineDiscountIncVat: 4.1,
                standingChargeExcVat: 21.0,
                standingChargeIncVat: 21.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-2R-VAR-17-01-11-B',
              );

              expect(
                result['day_unit_rate_exc_vat'],
                18.0,
              );

              expect(
                result['day_unit_rate_inc_vat'],
                18.1,
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                5.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                5.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                6.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                6.1,
              );

              expect(
                result['exit_fees_type'],
                'EXIT_FEES',
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
                result['night_unit_rate_exc_vat'],
                9.0,
              );

              expect(
                result['night_unit_rate_inc_vat'],
                9.1,
              );

              expect(
                result['online_discount_exc_vat'],
                4.0,
              );

              expect(
                result['online_discount_inc_vat'],
                4.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                21.0,
              );

              expect(
                result['standing_charge_inc_vat'],
                21.1,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Eco7ElectricityTariff(
                code: 'E-2R-VAR-17-01-11-B',
                dualFuelDiscountExcVat: 5.0,
                dualFuelDiscountIncVat: 5.1,
                exitFeesExcVat: 6.0,
                exitFeesIncVat: 6.1,
                exitFeesType: 'EXIT_FEES',
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                    method: 'GET',
                    rel: 'standard_unit_rates',
                  ),
                ],
                onlineDiscountExcVat: 4.0,
                onlineDiscountIncVat: 4.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-2R-VAR-17-01-11-B',
              );

              expect(
                result['day_unit_rate_exc_vat'],
                isNull,
              );

              expect(
                result['day_unit_rate_inc_vat'],
                isNull,
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                5.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                5.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                6.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                6.1,
              );

              expect(
                result['exit_fees_type'],
                'EXIT_FEES',
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
                result['night_unit_rate_exc_vat'],
                isNull,
              );

              expect(
                result['night_unit_rate_inc_vat'],
                isNull,
              );

              expect(
                result['online_discount_exc_vat'],
                4.0,
              );

              expect(
                result['online_discount_inc_vat'],
                4.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                isNull,
              );

              expect(
                result['standing_charge_inc_vat'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
