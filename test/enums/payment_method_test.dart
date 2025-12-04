import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  PaymentMethod.billTriggeredDirectDebit: 'BILL_TRIGGERED_DIRECT_DEBIT',
  PaymentMethod.monthlyDirectDebit: 'MONTHLY_DIRECT_DEBIT',
  PaymentMethod.monthlyDirectPayment: 'MONTHLY_DIRECT_PAYMENT',
};

void main() {
  group(
    'PaymentMethod',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  PaymentMethod.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => PaymentMethod.fromJson(''),
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
