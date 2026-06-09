import 'package:octopus_energy_api_client/v1.dart';
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
                'account_name': 'Chris Johnson',
                'account_number': '12345678',
                'account_sort_code': '111111',
                'delay_days': 3,
                'method': 'MONTHLY_DIRECT_DEBIT',
                'payment_day': 1,
              };

              final result = Payment.fromJson(json);

              expect(
                result.accountName,
                'Chris Johnson',
              );

              expect(
                result.accountNumber,
                '12345678',
              );

              expect(
                result.accountSortCode,
                '111111',
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
                1,
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
                accountName: 'Chris Johnson',
                accountNumber: '12345678',
                accountSortCode: '111111',
                delayDays: 3,
                method: PaymentMethod.monthlyDirectDebit,
                paymentDay: 1,
              );

              final result = model.toJson();

              expect(
                result['account_name'],
                'Chris Johnson',
              );

              expect(
                result['account_number'],
                '12345678',
              );

              expect(
                result['account_sort_code'],
                '111111',
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
                1,
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
