import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Quote',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'annual_payment': 46576,
              };

              final result = Quote.fromJson(json);

              expect(
                result.annualPayment,
                46576,
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
              final model = Quote(
                annualPayment: 46576,
              );

              final result = model.toJson();

              expect(
                result['annual_payment'],
                46576,
              );
            },
          );
        },
      );
    },
  );
}
