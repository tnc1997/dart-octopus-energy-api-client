import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Payment',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'account_name': 'Homer Simpson',
                'account_number': '12345678',
                'account_sort_code': '12-34-56',
                'delay_days': 3,
                'method': 'MONTHLY_DIRECT_DEBIT',
                'payment_day': 15,
              };

              final result = Payment.fromJson(json);

              expect(
                result.accountName,
                'Homer Simpson',
              );

              expect(
                result.accountNumber,
                '12345678',
              );

              expect(
                result.accountSortCode,
                '12-34-56',
              );

              expect(
                result.delayDays,
                3,
              );

              expect(
                result.method,
                PaymentMethod.monthlyDirectDebit,
              );

              expect(
                result.paymentDay,
                15,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'method': 'MONTHLY_DIRECT_PAYMENT',
              };

              final result = Payment.fromJson(json);

              expect(
                result.accountName,
                isNull,
              );

              expect(
                result.accountNumber,
                isNull,
              );

              expect(
                result.accountSortCode,
                isNull,
              );

              expect(
                result.delayDays,
                isNull,
              );

              expect(
                result.method,
                PaymentMethod.monthlyDirectPayment,
              );

              expect(
                result.paymentDay,
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
              final model = Payment(
                accountName: 'Homer Simpson',
                accountNumber: '12345678',
                accountSortCode: '12-34-56',
                delayDays: 3,
                method: PaymentMethod.monthlyDirectDebit,
                paymentDay: 15,
              );

              final result = model.toJson();

              expect(
                result['account_name'],
                'Homer Simpson',
              );

              expect(
                result['account_number'],
                '12345678',
              );

              expect(
                result['account_sort_code'],
                '12-34-56',
              );

              expect(
                result['delay_days'],
                3,
              );

              expect(
                result['method'],
                'MONTHLY_DIRECT_DEBIT',
              );

              expect(
                result['payment_day'],
                15,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Payment(
                method: PaymentMethod.monthlyDirectPayment,
              );

              final result = model.toJson();

              expect(
                result['account_name'],
                isNull,
              );

              expect(
                result['account_number'],
                isNull,
              );

              expect(
                result['account_sort_code'],
                isNull,
              );

              expect(
                result['delay_days'],
                isNull,
              );

              expect(
                result['method'],
                'MONTHLY_DIRECT_PAYMENT',
              );

              expect(
                result['payment_day'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
