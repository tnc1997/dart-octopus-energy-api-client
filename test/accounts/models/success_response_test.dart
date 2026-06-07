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
                'number': 'A-12341234',
                'password_reset': {
                  'token': 'cmlx6w-1232911237f5d13422c154c07',
                  'user_id': 'user_pk_b64_encoded',
                },
              };

              final result = SuccessResponse.fromJson(json);

              expect(
                result.number,
                'A-12341234',
              );

              expect(
                result.passwordReset,
                isA<PasswordReset>(),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'number': 'A-12341234',
              };

              final result = SuccessResponse.fromJson(json);

              expect(
                result.number,
                'A-12341234',
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
                number: 'A-12341234',
                passwordReset: PasswordReset(
                  token: 'cmlx6w-1232911237f5d13422c154c07',
                  userId: 'user_pk_b64_encoded',
                ),
              );

              final result = model.toJson();

              expect(
                result['number'],
                'A-12341234',
              );

              expect(
                result['password_reset'],
                isA<Map<String, dynamic>>(),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = SuccessResponse(
                number: 'A-12341234',
              );

              final result = model.toJson();

              expect(
                result['number'],
                'A-12341234',
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
