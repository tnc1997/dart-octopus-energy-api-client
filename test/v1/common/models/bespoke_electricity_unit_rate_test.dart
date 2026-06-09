import 'package:octopus_energy_api_client/v1.dart';
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
                'unit_rate': '12.6',
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
                12.6,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'unit_rate': '12.6',
              };

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
                12.6,
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
                unitRate: 12.6,
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
                result['unit_rate'],
                '12.6',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BespokeElectricityUnitRate(
                unitRate: 12.6,
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
                result['unit_rate'],
                '12.6',
              );
            },
          );
        },
      );
    },
  );
}
