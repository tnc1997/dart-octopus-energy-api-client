import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'PasswordReset',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'token': 'cmlx6w-1232911237f5d13422c154c07',
                'user_id': 'user_pk_b64_encoded',
              };

              final result = PasswordReset.fromJson(json);

              expect(
                result.token,
                'cmlx6w-1232911237f5d13422c154c07',
              );

              expect(
                result.userId,
                'user_pk_b64_encoded',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final result = PasswordReset.fromJson(<String, dynamic>{});

              expect(
                result.token,
                isNull,
              );

              expect(
                result.userId,
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
              final model = PasswordReset(
                token: 'cmlx6w-1232911237f5d13422c154c07',
                userId: 'user_pk_b64_encoded',
              );

              final result = model.toJson();

              expect(
                result['token'],
                'cmlx6w-1232911237f5d13422c154c07',
              );

              expect(
                result['user_id'],
                'user_pk_b64_encoded',
              );
            },
          );

          test(
            'should serialize model with null values to json',
                () {
              final model = PasswordReset();

              final result = model.toJson();

              expect(
                result['token'],
                isNull,
              );

              expect(
                result['user_id'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
