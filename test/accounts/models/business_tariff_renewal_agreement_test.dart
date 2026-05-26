import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                    'meter_serial_number': '12L3456789',
                    'standing_charge': '0.50',
                  }
                ],
                'commission': {
                  'affiliate_organisation_name': 'Affiliate Org',
                  'unit_rate_uplift': '0.01',
                },
                'mpxn': '1234567890',
                'tariff_code': 'G-1R-VAR-70-01-01-A',
                'valid_from_date': '1970-01-01T00:00:00.000Z',
                'valid_to_date': '1970-12-31T23:59:59.000Z',
              };

              final result = BusinessTariffRenewalAgreement.fromJson(json);

              expect(
                result.bespokeTariffRates,
                hasLength(1),
              );

              expect(
                result.commission,
                isNotNull,
              );

              expect(
                result.mpxn,
                '1234567890',
              );

              expect(
                result.tariffCode,
                'G-1R-VAR-70-01-01-A',
              );

              expect(
                result.validFromDate,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.validToDate,
                DateTime.parse('1970-12-31T23:59:59.000Z'),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'mpxn': '1234567890',
                'tariff_code': 'G-1R-VAR-70-01-01-A',
                'valid_from_date': '1970-01-01T00:00:00.000Z',
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
                '1234567890',
              );

              expect(
                result.tariffCode,
                'G-1R-VAR-70-01-01-A',
              );

              expect(
                result.validFromDate,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

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
                    meterSerialNumber: '12L3456789',
                    standingCharge: 0.50,
                  ),
                ],
                commission: BusinessTariffRenewalCommission(
                  affiliateOrganisationName: 'Affiliate Org',
                  unitRateUplift: 0.01,
                ),
                mpxn: '1234567890',
                tariffCode: 'G-1R-VAR-70-01-01-A',
                validFromDate: DateTime.parse('1970-01-01T00:00:00.000Z'),
                validToDate: DateTime.parse('1970-12-31T23:59:59.000Z'),
              );

              final result = model.toJson();

              expect(
                result['bespoke_tariff_rates'],
                hasLength(1),
              );

              expect(
                result['commission'],
                isNotNull,
              );

              expect(
                result['mpxn'],
                '1234567890',
              );

              expect(
                result['tariff_code'],
                'G-1R-VAR-70-01-01-A',
              );

              expect(
                result['valid_from_date'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['valid_to_date'],
                '1970-12-31T23:59:59.000Z',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalAgreement(
                mpxn: '1234567890',
                tariffCode: 'G-1R-VAR-70-01-01-A',
                validFromDate: DateTime.parse('1970-01-01T00:00:00.000Z'),
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
                '1234567890',
              );

              expect(
                result['tariff_code'],
                'G-1R-VAR-70-01-01-A',
              );

              expect(
                result['valid_from_date'],
                '1970-01-01T00:00:00.000Z',
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
