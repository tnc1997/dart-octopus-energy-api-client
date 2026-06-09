import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

class _AccountMeterPointMeter extends AccountMeterPointMeter {
  _AccountMeterPointMeter({
    required super.serialNumber,
  });
}

void main() {
  group(
    'AccountMeterPointMeter',
    () {
      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = _AccountMeterPointMeter(
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
