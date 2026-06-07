import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
        },
      );
    },
  );
}
