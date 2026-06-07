import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BusinessTariffRenewal',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'agreements': [
                  {
                    'mpxn': '1013004420117',
                    'tariff_code': 'E-1R-SOME-PRODUCT-J',
                    'valid_from_date': '2019-12-01',
                    'valid_to_date': '2020-12-01',
                  }
                ],
              };

              final result = BusinessTariffRenewal.fromJson(json);

              expect(
                result.agreements,
                isA<List<BusinessTariffRenewalAgreement>>().having(
                  (agreements) => agreements.length,
                  'length',
                  1,
                ),
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
              final model = BusinessTariffRenewal(
                agreements: [
                  BusinessTariffRenewalAgreement(
                    mpxn: '1013004420117',
                    tariffCode: 'E-1R-SOME-PRODUCT-J',
                    validFromDate: DateTime.parse('2019-12-01'),
                    validToDate: DateTime.parse('2020-12-01'),
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['agreements'],
                isA<List<Map<String, dynamic>>>().having(
                  (agreements) => agreements.length,
                  'length',
                  1,
                ),
              );
            },
          );
        },
      );
    },
  );
}
