import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountGasMeterPointMeter',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'serial_number': '12L3456789',
              };

              final result = AccountGasMeterPointMeter.fromJson(json);

              expect(
                result.serialNumber,
                '12L3456789',
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
              final model = AccountGasMeterPointMeter(
                serialNumber: '12L3456789',
              );

              final result = model.toJson();

              expect(
                result['serial_number'],
                '12L3456789',
              );
            },
          );
        },
      );
    },
  );
}
