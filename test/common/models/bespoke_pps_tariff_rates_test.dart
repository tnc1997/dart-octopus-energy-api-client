import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BespokePpsTariffRates',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'payment_method': 'DD',
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

              final result = BespokePpsTariffRates.fromJson(json);

              expect(
                result.paymentMethod,
                BespokePaymentMethod.dd,
              );

              expect(
                result.standingCharge,
                25.0,
              );

              expect(
                result.unitRate,
                15.0,
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
              final json = {
                'payment_method': 'DD',
              };

              final result = BespokePpsTariffRates.fromJson(json);

              expect(
                result.paymentMethod,
                BespokePaymentMethod.dd,
              );

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
              final model = BespokePpsTariffRates(
                paymentMethod: BespokePaymentMethod.dd,
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
                result['payment_method'],
                'DD',
              );

              expect(
                result['standing_charge'],
                '25.0',
              );

              expect(
                result['unit_rate'],
                '15.0',
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
              final model = BespokePpsTariffRates(
                paymentMethod: BespokePaymentMethod.dd,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                'DD',
              );

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
