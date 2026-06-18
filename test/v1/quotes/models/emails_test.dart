import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Emails',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'emails': [
                  'alice@example.com',
                  'bob@example.com',
                ],
                'referral_code': 'OCTO-REF-1234',
                'smart_product': 'SMART-PRODUCT-5678',
              };

              final result = Emails.fromJson(json);

              expect(
                result.emails,
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              expect(
                result.referralCode,
                'OCTO-REF-1234',
              );

              expect(
                result.smartProduct,
                'SMART-PRODUCT-5678',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'emails': [
                  'alice@example.com',
                  'bob@example.com',
                ],
              };

              final result = Emails.fromJson(json);

              expect(
                result.emails,
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              expect(
                result.referralCode,
                isNull,
              );

              expect(
                result.smartProduct,
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
              final model = Emails(
                emails: [
                  'alice@example.com',
                  'bob@example.com',
                ],
                referralCode: 'OCTO-REF-1234',
                smartProduct: 'SMART-PRODUCT-5678',
              );

              final result = model.toJson();

              expect(
                result['emails'],
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              expect(
                result['referral_code'],
                'OCTO-REF-1234',
              );

              expect(
                result['smart_product'],
                'SMART-PRODUCT-5678',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Emails(
                emails: [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              final result = model.toJson();

              expect(
                result['emails'],
                [
                  'alice@example.com',
                  'bob@example.com',
                ],
              );

              expect(
                result['referral_code'],
                isNull,
              );

              expect(
                result['smart_product'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
