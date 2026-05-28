import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Metadata',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'key': 'test_key',
                'value': 'test_value',
              };

              final result = Metadata.fromJson(json);

              expect(
                result.key,
                'test_key',
              );

              expect(
                result.value,
                'test_value',
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
              final model = Metadata(
                key: 'test_key',
                value: 'test_value',
              );

              final result = model.toJson();

              expect(
                result['key'],
                'test_key',
              );

              expect(
                result['value'],
                'test_value',
              );
            },
          );
        },
      );
    },
  );
}
