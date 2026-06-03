import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                'code': 'E-2R-SILVER-2017-1-A',
                'day_unit_rate_exc_vat': 18.0,
                'day_unit_rate_inc_vat': 18.1,
                'dual_fuel_discount_exc_vat': 1.0,
                'dual_fuel_discount_inc_vat': 1.1,
                'exit_fees_exc_vat': 2.0,
                'exit_fees_inc_vat': 2.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href': 'http://example.com',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
                'night_unit_rate_exc_vat': 10.0,
                'night_unit_rate_inc_vat': 10.1,
                'online_discount_exc_vat': 3.0,
                'online_discount_inc_vat': 3.1,
                'standing_charge_exc_vat': 20.0,
                'standing_charge_inc_vat': 20.1,
              };

              final result = Eco7ElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-2R-SILVER-2017-1-A',
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
                1.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                1.1,
              );

              expect(
                result.exitFeesExcVat,
                2.0,
              );

              expect(
                result.exitFeesIncVat,
                2.1,
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
                result.nightUnitRateExcVat,
                10.0,
              );

              expect(
                result.nightUnitRateIncVat,
                10.1,
              );

              expect(
                result.onlineDiscountExcVat,
                3.0,
              );

              expect(
                result.onlineDiscountIncVat,
                3.1,
              );

              expect(
                result.standingChargeExcVat,
                20.0,
              );

              expect(
                result.standingChargeIncVat,
                20.1,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'code': 'E-2R-SILVER-2017-1-A',
                'dual_fuel_discount_exc_vat': 1.0,
                'dual_fuel_discount_inc_vat': 1.1,
                'exit_fees_exc_vat': 2.0,
                'exit_fees_inc_vat': 2.1,
                'exit_fees_type': 'NONE',
                'links': [
                  {
                    'href': 'http://example.com',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
                'online_discount_exc_vat': 3.0,
                'online_discount_inc_vat': 3.1,
              };

              final result = Eco7ElectricityTariff.fromJson(json);

              expect(
                result.code,
                'E-2R-SILVER-2017-1-A',
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
                1.0,
              );

              expect(
                result.dualFuelDiscountIncVat,
                1.1,
              );

              expect(
                result.exitFeesExcVat,
                2.0,
              );

              expect(
                result.exitFeesIncVat,
                2.1,
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
                result.nightUnitRateExcVat,
                isNull,
              );

              expect(
                result.nightUnitRateIncVat,
                isNull,
              );

              expect(
                result.onlineDiscountExcVat,
                3.0,
              );

              expect(
                result.onlineDiscountIncVat,
                3.1,
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
                code: 'E-2R-SILVER-2017-1-A',
                dayUnitRateExcVat: 18.0,
                dayUnitRateIncVat: 18.1,
                dualFuelDiscountExcVat: 1.0,
                dualFuelDiscountIncVat: 1.1,
                exitFeesExcVat: 2.0,
                exitFeesIncVat: 2.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href: 'http://example.com',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
                nightUnitRateExcVat: 10.0,
                nightUnitRateIncVat: 10.1,
                onlineDiscountExcVat: 3.0,
                onlineDiscountIncVat: 3.1,
                standingChargeExcVat: 20.0,
                standingChargeIncVat: 20.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-2R-SILVER-2017-1-A',
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
                1.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                1.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                2.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                2.1,
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
                result['night_unit_rate_exc_vat'],
                10.0,
              );

              expect(
                result['night_unit_rate_inc_vat'],
                10.1,
              );

              expect(
                result['online_discount_exc_vat'],
                3.0,
              );

              expect(
                result['online_discount_inc_vat'],
                3.1,
              );

              expect(
                result['standing_charge_exc_vat'],
                20.0,
              );

              expect(
                result['standing_charge_inc_vat'],
                20.1,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Eco7ElectricityTariff(
                code: 'E-2R-SILVER-2017-1-A',
                dualFuelDiscountExcVat: 1.0,
                dualFuelDiscountIncVat: 1.1,
                exitFeesExcVat: 2.0,
                exitFeesIncVat: 2.1,
                exitFeesType: 'NONE',
                links: [
                  Link(
                    href: 'http://example.com',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
                onlineDiscountExcVat: 3.0,
                onlineDiscountIncVat: 3.1,
              );

              final result = model.toJson();

              expect(
                result['code'],
                'E-2R-SILVER-2017-1-A',
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
                1.0,
              );

              expect(
                result['dual_fuel_discount_inc_vat'],
                1.1,
              );

              expect(
                result['exit_fees_exc_vat'],
                2.0,
              );

              expect(
                result['exit_fees_inc_vat'],
                2.1,
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
                result['night_unit_rate_exc_vat'],
                isNull,
              );

              expect(
                result['night_unit_rate_inc_vat'],
                isNull,
              );

              expect(
                result['online_discount_exc_vat'],
                3.0,
              );

              expect(
                result['online_discount_inc_vat'],
                3.1,
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
