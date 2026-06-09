import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'QuoteTil',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'additionals': 'Some additional information',
                'annual_standing_charge': 91.25,
                'assumed_annual_consumption': 2900.0,
                'assumed_annual_consumption_day': 1800.0,
                'assumed_annual_consumption_night': 1100.0,
                'assumed_annual_consumption_off_peak': 400.0,
                'estimated_annual_cost': 845.67,
                'exit_fees': 30.0,
                'payment_method': 'DIRECT_DEBIT',
                'price_guaranteed_until': '2024-03-31T23:59:59Z',
                'standing_charge': 25.01,
                'supplier': 'TENTACLE_ENERGY',
                'tariff_code': 'E-1R-VAR-17-01-11-A',
                'tariff_ends_on': '2025-01-11',
                'tariff_name': 'Flexible Tentacle',
                'tariff_type': 'VARIABLE',
                'tcr': 14.5,
                'unit_rate': 18.27,
                'unit_rate_day': 21.33,
                'unit_rate_night': 9.81,
              };

              final result = QuoteTil.fromJson(json);

              expect(
                result.additionals,
                'Some additional information',
              );

              expect(
                result.annualStandingCharge,
                91.25,
              );

              expect(
                result.assumedAnnualConsumption,
                2900.0,
              );

              expect(
                result.assumedAnnualConsumptionDay,
                1800.0,
              );

              expect(
                result.assumedAnnualConsumptionNight,
                1100.0,
              );

              expect(
                result.assumedAnnualConsumptionOffPeak,
                400.0,
              );

              expect(
                result.estimatedAnnualCost,
                845.67,
              );

              expect(
                result.exitFees,
                30.0,
              );

              expect(
                result.paymentMethod,
                'DIRECT_DEBIT',
              );

              expect(
                result.priceGuaranteedUntil,
                DateTime.parse('2024-03-31T23:59:59Z'),
              );

              expect(
                result.standingCharge,
                25.01,
              );

              expect(
                result.supplier,
                'TENTACLE_ENERGY',
              );

              expect(
                result.tariffCode,
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result.tariffEndsOn,
                '2025-01-11',
              );

              expect(
                result.tariffName,
                'Flexible Tentacle',
              );

              expect(
                result.tariffType,
                'VARIABLE',
              );

              expect(
                result.tcr,
                14.5,
              );

              expect(
                result.unitRate,
                18.27,
              );

              expect(
                result.unitRateDay,
                21.33,
              );

              expect(
                result.unitRateNight,
                9.81,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = QuoteTil.fromJson(json);

              expect(
                result.additionals,
                isNull,
              );

              expect(
                result.annualStandingCharge,
                isNull,
              );

              expect(
                result.assumedAnnualConsumption,
                isNull,
              );

              expect(
                result.assumedAnnualConsumptionDay,
                isNull,
              );

              expect(
                result.assumedAnnualConsumptionNight,
                isNull,
              );

              expect(
                result.assumedAnnualConsumptionOffPeak,
                isNull,
              );

              expect(
                result.estimatedAnnualCost,
                isNull,
              );

              expect(
                result.exitFees,
                isNull,
              );

              expect(
                result.paymentMethod,
                isNull,
              );

              expect(
                result.priceGuaranteedUntil,
                isNull,
              );

              expect(
                result.standingCharge,
                isNull,
              );

              expect(
                result.supplier,
                isNull,
              );

              expect(
                result.tariffCode,
                isNull,
              );

              expect(
                result.tariffEndsOn,
                isNull,
              );

              expect(
                result.tariffName,
                isNull,
              );

              expect(
                result.tariffType,
                isNull,
              );

              expect(
                result.tcr,
                isNull,
              );

              expect(
                result.unitRate,
                isNull,
              );

              expect(
                result.unitRateDay,
                isNull,
              );

              expect(
                result.unitRateNight,
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
              final model = QuoteTil(
                additionals: 'Some additional information',
                annualStandingCharge: 91.25,
                assumedAnnualConsumption: 2900.0,
                assumedAnnualConsumptionDay: 1800.0,
                assumedAnnualConsumptionNight: 1100.0,
                assumedAnnualConsumptionOffPeak: 400.0,
                estimatedAnnualCost: 845.67,
                exitFees: 30.0,
                paymentMethod: 'DIRECT_DEBIT',
                priceGuaranteedUntil: DateTime.parse('2024-03-31T23:59:59Z'),
                standingCharge: 25.01,
                supplier: 'TENTACLE_ENERGY',
                tariffCode: 'E-1R-VAR-17-01-11-A',
                tariffEndsOn: '2025-01-11',
                tariffName: 'Flexible Tentacle',
                tariffType: 'VARIABLE',
                tcr: 14.5,
                unitRate: 18.27,
                unitRateDay: 21.33,
                unitRateNight: 9.81,
              );

              final result = model.toJson();

              expect(
                result['additionals'],
                'Some additional information',
              );

              expect(
                result['annual_standing_charge'],
                91.25,
              );

              expect(
                result['assumed_annual_consumption'],
                2900.0,
              );

              expect(
                result['assumed_annual_consumption_day'],
                1800.0,
              );

              expect(
                result['assumed_annual_consumption_night'],
                1100.0,
              );

              expect(
                result['assumed_annual_consumption_off_peak'],
                400.0,
              );

              expect(
                result['estimated_annual_cost'],
                845.67,
              );

              expect(
                result['exit_fees'],
                30.0,
              );

              expect(
                result['payment_method'],
                'DIRECT_DEBIT',
              );

              expect(
                result['price_guaranteed_until'],
                '2024-03-31T23:59:59.000Z',
              );

              expect(
                result['standing_charge'],
                25.01,
              );

              expect(
                result['supplier'],
                'TENTACLE_ENERGY',
              );

              expect(
                result['tariff_code'],
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['tariff_ends_on'],
                '2025-01-11',
              );

              expect(
                result['tariff_name'],
                'Flexible Tentacle',
              );

              expect(
                result['tariff_type'],
                'VARIABLE',
              );

              expect(
                result['tcr'],
                14.5,
              );

              expect(
                result['unit_rate'],
                18.27,
              );

              expect(
                result['unit_rate_day'],
                21.33,
              );

              expect(
                result['unit_rate_night'],
                9.81,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = QuoteTil();

              final result = model.toJson();

              expect(
                result['additionals'],
                isNull,
              );

              expect(
                result['annual_standing_charge'],
                isNull,
              );

              expect(
                result['assumed_annual_consumption'],
                isNull,
              );

              expect(
                result['assumed_annual_consumption_day'],
                isNull,
              );

              expect(
                result['assumed_annual_consumption_night'],
                isNull,
              );

              expect(
                result['assumed_annual_consumption_off_peak'],
                isNull,
              );

              expect(
                result['estimated_annual_cost'],
                isNull,
              );

              expect(
                result['exit_fees'],
                isNull,
              );

              expect(
                result['payment_method'],
                isNull,
              );

              expect(
                result['price_guaranteed_until'],
                isNull,
              );

              expect(
                result['standing_charge'],
                isNull,
              );

              expect(
                result['supplier'],
                isNull,
              );

              expect(
                result['tariff_code'],
                isNull,
              );

              expect(
                result['tariff_ends_on'],
                isNull,
              );

              expect(
                result['tariff_name'],
                isNull,
              );

              expect(
                result['tariff_type'],
                isNull,
              );

              expect(
                result['tcr'],
                isNull,
              );

              expect(
                result['unit_rate'],
                isNull,
              );

              expect(
                result['unit_rate_day'],
                isNull,
              );

              expect(
                result['unit_rate_night'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
