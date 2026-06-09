import 'package:octopus_energy_api_client/v1.dart';
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
                'key': 'metadata_key',
                'value': {
                  'melo': 10284,
                  'some_data': 'some_value',
                },
              };

              final result = Metadata.fromJson(json);

              expect(
                result.key,
                'metadata_key',
              );

              expect(
                result.value,
                {
                  'melo': 10284,
                  'some_data': 'some_value',
                },
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
                key: 'metadata_key',
                value: {
                  'melo': 10284,
                  'some_data': 'some_value',
                },
              );

              final result = model.toJson();

              expect(
                result['key'],
                'metadata_key',
              );

              expect(
                result['value'],
                {
                  'melo': 10284,
                  'some_data': 'some_value',
                },
              );
            },
          );
        },
      );
    },
  );
}
