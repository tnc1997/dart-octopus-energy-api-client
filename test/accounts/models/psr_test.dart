import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Psr',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'requires_signup': false,
              };

              final result = Psr.fromJson(json);

              expect(
                result.requiresSignup,
                isFalse,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = Psr.fromJson(json);

              expect(
                result.requiresSignup,
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
              final model = Psr(
                requiresSignup: false,
              );

              final result = model.toJson();

              expect(
                result['requires_signup'],
                isFalse,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Psr();

              final result = model.toJson();

              expect(
                result['requires_signup'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
