import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'SuccessResponse',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'number': '12345',
                'password_reset': {
                  'token': 'secret_token',
                  'user_id': 'user_123',
                },
              };

              final result = SuccessResponse.fromJson(json);

              expect(
                result.number,
                '12345',
              );

              expect(
                result.passwordReset,
                isNotNull,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'number': '12345',
              };

              final result = SuccessResponse.fromJson(json);

              expect(
                result.number,
                '12345',
              );

              expect(
                result.passwordReset,
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
              final model = SuccessResponse(
                number: '12345',
                passwordReset: PasswordReset(
                  token: 'secret_token',
                  userId: 'user_123',
                ),
              );

              final result = model.toJson();

              expect(
                result['number'],
                '12345',
              );

              expect(
                result['password_reset'],
                isNotNull,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = SuccessResponse(
                number: '12345',
              );

              final result = model.toJson();

              expect(
                result['number'],
                '12345',
              );

              expect(
                result['password_reset'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
