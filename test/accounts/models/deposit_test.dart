import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Deposit',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'amount': 100,
                'key': 'deposit_key',
                'reason': 'Deposit for new account',
              };

              final result = Deposit.fromJson(json);

              expect(
                result.amount,
                100,
              );

              expect(
                result.key,
                'deposit_key',
              );

              expect(
                result.reason,
                'Deposit for new account',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = Deposit.fromJson(json);

              expect(
                result.amount,
                isNull,
              );

              expect(
                result.key,
                isNull,
              );

              expect(
                result.reason,
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
              final model = Deposit(
                amount: 100,
                key: 'deposit_key',
                reason: 'Deposit for new account',
              );

              final result = model.toJson();

              expect(
                result['amount'],
                100,
              );

              expect(
                result['key'],
                'deposit_key',
              );

              expect(
                result['reason'],
                'Deposit for new account',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Deposit();

              final result = model.toJson();

              expect(
                result['amount'],
                isNull,
              );

              expect(
                result['key'],
                isNull,
              );

              expect(
                result['reason'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
