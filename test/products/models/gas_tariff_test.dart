import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                'code': 'G-1R-SILVER-2017-1-A',
                'dual_fuel_discount_exc_vat': 4.0,
                'dual_fuel_discount_inc_vat': 4.1,
                'exit_fees_exc_vat': 5.0,
                'exit_fees_inc_vat': 5.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href': 'http://example.com',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
                'online_discount_exc_vat': 6.0,
                'online_discount_inc_vat': 6.1,
                'standing_charge_exc_vat': 20.0,
                'standing_charge_inc_vat': 20.1,
                'standard_unit_rate_exc_vat': 3.0,
                'standard_unit_rate_inc_vat': 3.1,
              };

              final result = GasTariff.fromJson(json);

              expect(
                result.code,
                'G-1R-SILVER-2017-1-A',
              );

              expect(
                result.dualFuelDiscountExcVat,
                4.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                4.1,
              );

              expect(
                result.exitFeesExcVat,
                5.0,
              );

              expect(
                result.exitFeesIncVat,
                5.1,
              );

              expect(
                result.exitFeesType,
                'NONE',
              );

              expect(
                result.links,
                hasLength(1),
              );

              expect(
                result.onlineDiscountExcVat,
                6.0,
              );

              expect(
                result.onlineDiscountIncVat,
                6.1,
              );

              expect(
                result.standingChargeExcVat,
                20.0,
              );

              expect(
                result.standingChargeIncVat,
                20.1,
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
                'code': 'G-1R-SILVER-2017-1-A',
                'dual_fuel_discount_exc_vat': 4.0,
                'dual_fuel_discount_inc_vat': 4.1,
                'exit_fees_exc_vat': 5.0,
                'exit_fees_inc_vat': 5.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href': 'http://example.com',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
                'online_discount_exc_vat': 6.0,
                'online_discount_inc_vat': 6.1,
              };

              final result = GasTariff.fromJson(json);

              expect(
                result.code,
                'G-1R-SILVER-2017-1-A',
              );

              expect(
                result.dualFuelDiscountExcVat,
                4.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                4.1,
              );

              expect(
                result.exitFeesExcVat,
                5.0,
              );

              expect(
                result.exitFeesIncVat,
                5.1,
              );

              expect(
                result.exitFeesType,
                'NONE',
              );

              expect(
                result.links,
                hasLength(1),
              );

              expect(
                result.onlineDiscountExcVat,
                6.0,
              );

              expect(
                result.onlineDiscountIncVat,
                6.1,
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
                code: 'G-1R-SILVER-2017-1-A',
                dualFuelDiscountExcVat: 4.0,
                dualFuelDiscountIncVat: 4.1,
                exitFeesExcVat: 5.0,
                exitFeesIncVat: 5.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href: 'http://example.com',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
                onlineDiscountExcVat: 6.0,
                onlineDiscountIncVat: 6.1,
                standingChargeExcVat: 20.0,
                standingChargeIncVat: 20.1,
                standardUnitRateExcVat: 3.0,
                standardUnitRateIncVat: 3.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'G-1R-SILVER-2017-1-A',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                4.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                4.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                5.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                5.1,
              );

              expect(
                result['exit_fees_type'],
                'NONE',
              );

              expect(
                result['links'],
                hasLength(1),
              );

              expect(
                result['online_discount_exc_vat'],
                6.0,
              );

              expect(
                result['online_discount_inc_vat'],
                6.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                20.0,
              );

              expect(
                result['standing_charge_inc_vat'],
                20.1,
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
                code: 'G-1R-SILVER-2017-1-A',
                dualFuelDiscountExcVat: 4.0,
                dualFuelDiscountIncVat: 4.1,
                exitFeesExcVat: 5.0,
                exitFeesIncVat: 5.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href: 'http://example.com',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
                onlineDiscountExcVat: 6.0,
                onlineDiscountIncVat: 6.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'G-1R-SILVER-2017-1-A',
              );

              expect(
                result['dual_fuel_discount_exc_vat'],
                4.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                4.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                5.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                5.1,
              );

              expect(
                result['exit_fees_type'],
                'NONE',
              );

              expect(
                result['links'],
                hasLength(1),
              );

              expect(
                result['online_discount_exc_vat'],
                6.0,
              );

              expect(
                result['online_discount_inc_vat'],
                6.1,
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
