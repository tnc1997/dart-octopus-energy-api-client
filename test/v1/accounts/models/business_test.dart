import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Business',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'annual_turnover': 575000,
                'business_type': 'LIMITED',
                'credit_reference_id': 'CRA-998877',
                'head_count': 25,
                'is_ccl_exempt': true,
                'is_vat_exempt': false,
                'name': 'Acme Corporation Limited',
                'number': '09263424',
                'phone_number': '+44 1425 123456',
                'proprietor': {
                  'email_address': 'chris@example.com',
                  'first_name': 'Chris',
                  'last_name': 'Johnson',
                },
              };

              final result = Business.fromJson(json);

              expect(
                result.annualTurnover,
                575000,
              );

              expect(
                result.businessType,
                BusinessType.limited,
              );

              expect(
                result.creditReferenceId,
                'CRA-998877',
              );

              expect(
                result.headCount,
                25,
              );

              expect(
                result.isCclExempt,
                isTrue,
              );

              expect(
                result.isVatExempt,
                isFalse,
              );

              expect(
                result.name,
                'Acme Corporation Limited',
              );

              expect(
                result.number,
                '09263424',
              );

              expect(
                result.phoneNumber,
                '+44 1425 123456',
              );

              expect(
                result.proprietor,
                isA<Proprietor>(),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'business_type': 'LIMITED',
                'is_ccl_exempt': true,
                'is_vat_exempt': false,
                'name': 'Acme Corporation Limited',
              };

              final result = Business.fromJson(json);

              expect(
                result.annualTurnover,
                isNull,
              );

              expect(
                result.businessType,
                BusinessType.limited,
              );

              expect(
                result.creditReferenceId,
                isNull,
              );

              expect(
                result.headCount,
                isNull,
              );

              expect(
                result.isCclExempt,
                isTrue,
              );

              expect(
                result.isVatExempt,
                isFalse,
              );

              expect(
                result.name,
                'Acme Corporation Limited',
              );

              expect(
                result.number,
                isNull,
              );

              expect(
                result.phoneNumber,
                isNull,
              );

              expect(
                result.proprietor,
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
              final model = Business(
                annualTurnover: 575000,
                businessType: BusinessType.limited,
                creditReferenceId: 'CRA-998877',
                headCount: 25,
                isCclExempt: true,
                isVatExempt: false,
                name: 'Acme Corporation Limited',
                number: '09263424',
                phoneNumber: '+44 1425 123456',
                proprietor: Proprietor(
                  emailAddress: 'chris@example.com',
                  firstName: 'Chris',
                  lastName: 'Johnson',
                ),
              );

              final result = model.toJson();

              expect(
                result['annual_turnover'],
                575000,
              );

              expect(
                result['business_type'],
                'LIMITED',
              );

              expect(
                result['credit_reference_id'],
                'CRA-998877',
              );

              expect(
                result['head_count'],
                25,
              );

              expect(
                result['is_ccl_exempt'],
                isTrue,
              );

              expect(
                result['is_vat_exempt'],
                isFalse,
              );

              expect(
                result['name'],
                'Acme Corporation Limited',
              );

              expect(
                result['number'],
                '09263424',
              );

              expect(
                result['phone_number'],
                '+44 1425 123456',
              );

              expect(
                result['proprietor'],
                isA<Map<String, dynamic>>(),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Business(
                businessType: BusinessType.limited,
                isCclExempt: true,
                isVatExempt: false,
                name: 'Acme Corporation Limited',
              );

              final result = model.toJson();

              expect(
                result['annual_turnover'],
                isNull,
              );

              expect(
                result['business_type'],
                'LIMITED',
              );

              expect(
                result['credit_reference_id'],
                isNull,
              );

              expect(
                result['head_count'],
                isNull,
              );

              expect(
                result['is_ccl_exempt'],
                isTrue,
              );

              expect(
                result['is_vat_exempt'],
                isFalse,
              );

              expect(
                result['name'],
                'Acme Corporation Limited',
              );

              expect(
                result['number'],
                isNull,
              );

              expect(
                result['phone_number'],
                isNull,
              );

              expect(
                result['proprietor'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
