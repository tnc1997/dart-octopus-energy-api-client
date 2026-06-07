import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'GridSupplyPoint',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'group_id': '_A',
              };

              final result = GridSupplyPoint.fromJson(json);

              expect(
                result.groupId,
                '_A',
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
              final model = GridSupplyPoint(
                groupId: '_A',
              );

              final result = model.toJson();

              expect(
                result['group_id'],
                '_A',
              );
            },
          );
        },
      );
    },
  );
}
