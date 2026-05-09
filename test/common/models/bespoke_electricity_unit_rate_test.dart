import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BespokeElectricityUnitRate',
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
                'unit_rate': '10.5',
              };

              final result = BespokeElectricityUnitRate.fromJson(json);

              expect(
                result.paymentMethod,
                BespokePaymentMethod.dd,
              );

              expect(
                result.rateType,
                BespokeRateType.standard,
              );

              expect(
                result.unitRate,
                json['unit_rate'],
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {};

              final result = BespokeElectricityUnitRate.fromJson(json);

              expect(
                result.paymentMethod,
                isNull,
              );

              expect(
                result.rateType,
                isNull,
              );

              expect(
                result.unitRate,
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
              final model = BespokeElectricityUnitRate(
                paymentMethod: BespokePaymentMethod.dd,
                rateType: BespokeRateType.standard,
                unitRate: '10.5',
              );

              final result = model.toJson();

              expect(
                result['payment_method'],
                model.paymentMethod?.toJson(),
              );

              expect(
                result['rate_type'],
                model.rateType?.toJson(),
              );

              expect(
                result['unit_rate'],
                model.unitRate,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BespokeElectricityUnitRate();

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
                result['unit_rate'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
