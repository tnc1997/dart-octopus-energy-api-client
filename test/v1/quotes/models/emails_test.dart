import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Emails',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'emails': [
                  'alice@example.com',
                  'bob@example.com',
                ],
              };

              final result = Emails.fromJson(json);

              expect(
                result.emails,
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
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
              final model = Emails(
                emails: [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              final result = model.toJson();

              expect(
                result['emails'],
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );
            },
          );
        },
      );
    },
  );
}
