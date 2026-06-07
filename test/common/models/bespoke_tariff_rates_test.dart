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
                'standing_charge': '13.25',
                'unit_rate': '3.25',
                'unit_rates': [
                  {
                    'payment_method': 'DD',
                    'rate_type': 'STANDARD',
                    'unit_rate': '12.6',
                  },
                ],
              };

              final result = BespokeTariffRates.fromJson(json);

              expect(
                result.standingCharge,
                13.25,
              );

              expect(
                result.unitRate,
                3.25,
              );

              expect(
                result.unitRates,
                isA<List<BespokeElectricityUnitRate>>().having(
                  (unitRates) => unitRates.length,
                  'length',
                  1,
                ),
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
                standingCharge: 13.25,
                unitRate: 3.25,
                unitRates: [
                  BespokeElectricityUnitRate(
                    paymentMethod: BespokePaymentMethod.dd,
                    rateType: BespokeRateType.standard,
                    unitRate: 12.6,
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['standing_charge'],
                '13.25',
              );

              expect(
                result['unit_rate'],
                '3.25',
              );

              expect(
                result['unit_rates'],
                isA<List<Map<String, dynamic>>>().having(
                  (unitRates) => unitRates.length,
                  'length',
                  1,
                ),
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
