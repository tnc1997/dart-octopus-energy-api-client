import 'package:octopus_energy_api_client/v1.dart';
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
                'number': 'A-12341234',
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
                'A-12341234',
              );

              expect(
                result.properties,
                isA<List<AccountProperty>>().having(
                  (properties) => properties.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'number': 'A-12341234',
              };

              final result = Account.fromJson(json);

              expect(
                result.number,
                'A-12341234',
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
                number: 'A-12341234',
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
                'A-12341234',
              );

              expect(
                result['properties'],
                isA<List<Map<String, dynamic>>>().having(
                  (properties) => properties.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Account(
                number: 'A-12341234',
              );

              final result = model.toJson();

              expect(
                result['number'],
                'A-12341234',
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
