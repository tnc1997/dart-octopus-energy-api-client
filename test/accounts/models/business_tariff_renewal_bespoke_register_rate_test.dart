import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BusinessTariffRenewalBespokeRegisterRate',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'payment_method': 'DD',
                'rate_type': 'STANDARD',
                'register_identifier': '01',
                'unit_rate': '0.35',
              };

              final result =
                  BusinessTariffRenewalBespokeRegisterRate.fromJson(json);

              expect(
                result.paymentMethod,
                BespokePaymentMethod.dd,
              );

              expect(
                result.rateType,
                BespokeRateType.standard,
              );

              expect(
                result.registerIdentifier,
                '01',
              );

              expect(
                result.unitRate,
                0.35,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'unit_rate': '0.35',
              };

              final result =
                  BusinessTariffRenewalBespokeRegisterRate.fromJson(json);

              expect(
                result.paymentMethod,
                isNull,
              );

              expect(
                result.rateType,
                isNull,
              );

              expect(
                result.registerIdentifier,
                isNull,
              );

              expect(
                result.unitRate,
                0.35,
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
              final model = BusinessTariffRenewalBespokeRegisterRate(
                paymentMethod: BespokePaymentMethod.dd,
                rateType: BespokeRateType.standard,
                registerIdentifier: '01',
                unitRate: 0.35,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                'DD',
              );

              expect(
                result['rate_type'],
                'STANDARD',
              );

              expect(
                result['register_identifier'],
                '01',
              );

              expect(
                result['unit_rate'],
                '0.35',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalBespokeRegisterRate(
                unitRate: 0.35,
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                isNull,
              );

              expect(
                result['rate_type'],
                isNull,
              );

              expect(
                result['register_identifier'],
                isNull,
              );

              expect(
                result['unit_rate'],
                '0.35',
              );
            },
          );
        },
      );
    },
  );
}
