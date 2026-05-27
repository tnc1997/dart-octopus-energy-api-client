import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                'annual_turnover': 1000000,
                'business_type': 'LIMITED',
                'head_count': 50,
                'is_ccl_exempt': false,
                'is_vat_exempt': false,
                'name': 'Octopus Energy Ltd',
                'number': '09263424',
              };

              final result = Business.fromJson(json);

              expect(
                result.annualTurnover,
                1000000,
              );

              expect(
                result.businessType,
                BusinessType.limited,
              );

              expect(
                result.headCount,
                50,
              );

              expect(
                result.isCclExempt,
                isFalse,
              );

              expect(
                result.isVatExempt,
                isFalse,
              );

              expect(
                result.name,
                'Octopus Energy Ltd',
              );

              expect(
                result.number,
                '09263424',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'business_type': 'LIMITED',
                'is_ccl_exempt': false,
                'is_vat_exempt': false,
                'name': 'Octopus Energy Ltd',
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
                result.headCount,
                isNull,
              );

              expect(
                result.isCclExempt,
                isFalse,
              );

              expect(
                result.isVatExempt,
                isFalse,
              );

              expect(
                result.name,
                'Octopus Energy Ltd',
              );

              expect(
                result.number,
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
                annualTurnover: 1000000,
                businessType: BusinessType.limited,
                headCount: 50,
                isCclExempt: false,
                isVatExempt: false,
                name: 'Octopus Energy Ltd',
                number: '09263424',
              );

              final result = model.toJson();

              expect(
                result['annual_turnover'],
                1000000,
              );

              expect(
                result['business_type'],
                'LIMITED',
              );

              expect(
                result['head_count'],
                50,
              );

              expect(
                result['is_ccl_exempt'],
                isFalse,
              );

              expect(
                result['is_vat_exempt'],
                isFalse,
              );

              expect(
                result['name'],
                'Octopus Energy Ltd',
              );

              expect(
                result['number'],
                '09263424',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Business(
                businessType: BusinessType.limited,
                isCclExempt: false,
                isVatExempt: false,
                name: 'Octopus Energy Ltd',
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
                result['head_count'],
                isNull,
              );

              expect(
                result['is_ccl_exempt'],
                isFalse,
              );

              expect(
                result['is_vat_exempt'],
                isFalse,
              );

              expect(
                result['name'],
                'Octopus Energy Ltd',
              );

              expect(
                result['number'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
