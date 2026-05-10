import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BespokeTariffRates',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'standing_charge': '25.0',
                'unit_rate': '15.0',
                'unit_rates': [
                  {
                    'payment_method': 'DD',
                    'rate_type': 'STANDARD',
                    'unit_rate': '10.5',
                  },
                ],
              };

              final result = BespokeTariffRates.fromJson(json);

              expect(
                result.standingCharge,
                25.0,
              );

              expect(
                result.unitRate,
                15.0,
              );

              expect(
                result.unitRates?.length,
                1,
              );

              expect(
                result.unitRates?[0].paymentMethod,
                BespokePaymentMethod.dd,
              );

              expect(
                result.unitRates?[0].rateType,
                BespokeRateType.standard,
              );

              expect(
                result.unitRates?[0].unitRate,
                10.5,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = BespokeTariffRates.fromJson(json);

              expect(
                result.standingCharge,
                isNull,
              );

              expect(
                result.unitRate,
                isNull,
              );

              expect(
                result.unitRates,
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
              final model = BespokeTariffRates(
                standingCharge: 25.0,
                unitRate: 15.0,
                unitRates: [
                  BespokeElectricityUnitRate(
                    paymentMethod: BespokePaymentMethod.dd,
                    rateType: BespokeRateType.standard,
                    unitRate: 10.5,
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['standing_charge'],
                '25.0',
              );

              expect(
                result['unit_rate'],
                '15.0',
              );

              expect(
                result['unit_rates']?.length,
                1,
              );

              expect(
                result['unit_rates']?[0]['payment_method'],
                'DD',
              );

              expect(
                result['unit_rates']?[0]['rate_type'],
                'STANDARD',
              );

              expect(
                result['unit_rates']?[0]['unit_rate'],
                '10.5',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BespokeTariffRates();

              final result = model.toJson();

              expect(
                result['standing_charge'],
                isNull,
              );

              expect(
                result['unit_rate'],
                isNull,
              );

              expect(
                result['unit_rates'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
