import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Account',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'number': 'A-12345678',
                'properties': [
                  {
                    'id': 12345,
                    'moved_in_at': '1970-01-01T00:00:00.000Z',
                  }
                ],
              };

              final result = Account.fromJson(json);

              expect(
                result.number,
                'A-12345678',
              );

              expect(
                result.properties,
                hasLength(1),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'number': 'A-12345678',
              };

              final result = Account.fromJson(json);

              expect(
                result.number,
                'A-12345678',
              );

              expect(
                result.properties,
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
              final model = Account(
                number: 'A-12345678',
                properties: [
                  AccountProperty(
                    id: 12345,
                    movedInAt: DateTime.parse('1970-01-01T00:00:00.000Z'),
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['number'],
                'A-12345678',
              );

              expect(
                result['properties'],
                hasLength(1),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Account(
                number: 'A-12345678',
              );

              final result = model.toJson();

              expect(
                result['number'],
                'A-12345678',
              );

              expect(
                result['properties'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
