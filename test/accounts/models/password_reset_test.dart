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
                'token': 'secret_token',
                'user_id': 'user_123',
              };

              final result = PasswordReset.fromJson(json);

              expect(
                result.token,
                'secret_token',
              );

              expect(
                result.userId,
                'user_123',
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
                token: 'secret_token',
                userId: 'user_123',
              );

              final result = model.toJson();

              expect(
                result['token'],
                'secret_token',
              );

              expect(
                result['user_id'],
                'user_123',
              );
            },
          );
        },
      );
    },
  );
}
