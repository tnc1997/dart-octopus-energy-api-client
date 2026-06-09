import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  AccountSource.callCentreInbound: 'CALL_CENTRE_INBOUND',
  AccountSource.callCentreOutbound: 'CALL_CENTRE_OUTBOUND',
  AccountSource.faceToFace: 'FACE_TO_FACE',
  AccountSource.internet: 'INTERNET',
};

void main() {
  group(
    'AccountSource',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  AccountSource.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => AccountSource.fromJson(''),
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
