import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BusinessTariffRenewalAgreement',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'bespoke_tariff_rates': [
                  {
                    'meter_serial_number': 'Z16N389556',
                    'standing_charge': '3.25',
                  }
                ],
                'commission': {
                  'affiliate_organisation_name': 'Some Partner',
                  'unit_rate_uplift': '1.00',
                },
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '2019-12-01',
                'valid_to_date': '2020-12-01',
              };

              final result = BusinessTariffRenewalAgreement.fromJson(json);

              expect(
                result.bespokeTariffRates,
                isA<List<BusinessTariffRenewalBespokeTariffRate>>().having(
                  (bespokeTariffRates) => bespokeTariffRates.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.commission,
                isA<BusinessTariffRenewalCommission>(),
              );

              expect(
                result.mpxn,
                '1013004420117',
              );

              expect(
                result.tariffCode,
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result.validFromDate,
                DateTime.parse('2019-12-01'),
              );

              expect(
                result.validToDate,
                DateTime.parse('2020-12-01'),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '2019-12-01',
              };

              final result = BusinessTariffRenewalAgreement.fromJson(json);

              expect(
                result.bespokeTariffRates,
                isNull,
              );

              expect(
                result.commission,
                isNull,
              );

              expect(
                result.mpxn,
                '1013004420117',
              );

              expect(
                result.tariffCode,
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result.validFromDate,
                DateTime.parse('2019-12-01'),
              );

              expect(
                result.validToDate,
                isNull,
              );
            },
          );

          test(
            'should return model with null validToDate from json with an empty string',
            () {
              final json = {
                'bespoke_tariff_rates': [
                  {
                    'meter_serial_number': 'Z16N389556',
                    'standing_charge': '3.25',
                  }
                ],
                'commission': {
                  'affiliate_organisation_name': 'Some Partner',
                  'unit_rate_uplift': '1.00',
                },
                'mpxn': '1013004420117',
                'tariff_code': 'E-1R-SOME-PRODUCT-J',
                'valid_from_date': '2019-12-01',
                'valid_to_date': '',
              };

              final result = BusinessTariffRenewalAgreement.fromJson(json);

              expect(
                result.validToDate,
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
              final model = BusinessTariffRenewalAgreement(
                bespokeTariffRates: [
                  BusinessTariffRenewalBespokeTariffRate(
                    meterSerialNumber: 'Z16N389556',
                    standingCharge: 3.25,
                  ),
                ],
                commission: BusinessTariffRenewalCommission(
                  affiliateOrganisationName: 'Some Partner',
                  unitRateUplift: 1.00,
                ),
                mpxn: '1013004420117',
                tariffCode: 'E-1R-SOME-PRODUCT-J',
                validFromDate: DateTime.parse('2019-12-01'),
                validToDate: DateTime.parse('2020-12-01'),
              );

              final result = model.toJson();

              expect(
                result['bespoke_tariff_rates'],
                isA<List<Map<String, dynamic>>>().having(
                  (bespokeTariffRates) => bespokeTariffRates.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['commission'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['mpxn'],
                '1013004420117',
              );

              expect(
                result['tariff_code'],
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result['valid_from_date'],
                '2019-12-01T00:00:00.000',
              );

              expect(
                result['valid_to_date'],
                '2020-12-01T00:00:00.000',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalAgreement(
                mpxn: '1013004420117',
                tariffCode: 'E-1R-SOME-PRODUCT-J',
                validFromDate: DateTime.parse('2019-12-01'),
              );

              final result = model.toJson();

              expect(
                result['bespoke_tariff_rates'],
                isNull,
              );

              expect(
                result['commission'],
                isNull,
              );

              expect(
                result['mpxn'],
                '1013004420117',
              );

              expect(
                result['tariff_code'],
                'E-1R-SOME-PRODUCT-J',
              );

              expect(
                result['valid_from_date'],
                '2019-12-01T00:00:00.000',
              );

              expect(
                result['valid_to_date'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
