import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  BespokePaymentMethod.dd: 'DD',
  BespokePaymentMethod.ndd: 'NDD',
  BespokePaymentMethod.pp: 'PP',
};

void main() {
  group(
    'BespokePaymentMethod',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  BespokePaymentMethod.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => BespokePaymentMethod.fromJson(''),
                throwsA(isA<ArgumentError>()),
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should map the enum value to a json string',
            () {
              for (final entry in _cases.entries) {
                expect(
                  entry.key.toJson(),
                  entry.value,
                );
              }
            },
          );
        },
      );
    },
  );
}
