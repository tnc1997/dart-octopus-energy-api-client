import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BillingOptions',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'period_length': 1,
                'period_start_day': 2,
                'period_start_month': 3,
              };

              final result = BillingOptions.fromJson(json);

              expect(
                result.periodLength,
                1,
              );

              expect(
                result.periodStartDay,
                2,
              );

              expect(
                result.periodStartMonth,
                3,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = BillingOptions.fromJson(json);

              expect(
                result.periodLength,
                isNull,
              );

              expect(
                result.periodStartDay,
                isNull,
              );

              expect(
                result.periodStartMonth,
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
              final model = BillingOptions(
                periodLength: 1,
                periodStartDay: 2,
                periodStartMonth: 3,
              );

              final result = model.toJson();

              expect(
                result['period_length'],
                1,
              );

              expect(
                result['period_start_day'],
                2,
              );

              expect(
                result['period_start_month'],
                3,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BillingOptions();

              final result = model.toJson();

              expect(
                result['period_length'],
                isNull,
              );

              expect(
                result['period_start_day'],
                isNull,
              );

              expect(
                result['period_start_month'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
