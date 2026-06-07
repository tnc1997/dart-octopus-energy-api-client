import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'BusinessTariffRenewalCommission',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'affiliate_organisation_name': 'Some Partner',
                'affiliate_link_subdomain': 'affiliate',
                'fixed_tpi_fee': 100,
                'standing_charge_uplift': '0.05',
                'unit_rate_uplift': '1.00',
              };

              final result = BusinessTariffRenewalCommission.fromJson(json);

              expect(
                result.affiliateOrganisationName,
                'Some Partner',
              );

              expect(
                result.affiliateLinkSubdomain,
                'affiliate',
              );

              expect(
                result.fixedTpiFee,
                100,
              );

              expect(
                result.standingChargeUplift,
                0.05,
              );

              expect(
                result.unitRateUplift,
                1.0,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'affiliate_organisation_name': 'Some Partner',
                'unit_rate_uplift': '1.00',
              };

              final result = BusinessTariffRenewalCommission.fromJson(json);

              expect(
                result.affiliateOrganisationName,
                'Some Partner',
              );

              expect(
                result.affiliateLinkSubdomain,
                isNull,
              );

              expect(
                result.fixedTpiFee,
                isNull,
              );

              expect(
                result.standingChargeUplift,
                isNull,
              );

              expect(
                result.unitRateUplift,
                1.0,
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
              final model = BusinessTariffRenewalCommission(
                affiliateOrganisationName: 'Some Partner',
                affiliateLinkSubdomain: 'affiliate',
                fixedTpiFee: 100,
                standingChargeUplift: 0.05,
                unitRateUplift: 1.00,
              );

              final result = model.toJson();

              expect(
                result['affiliate_organisation_name'],
                'Some Partner',
              );

              expect(
                result['affiliate_link_subdomain'],
                'affiliate',
              );

              expect(
                result['fixed_tpi_fee'],
                100,
              );

              expect(
                result['standing_charge_uplift'],
                '0.05',
              );

              expect(
                result['unit_rate_uplift'],
                '1.0',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = BusinessTariffRenewalCommission(
                affiliateOrganisationName: 'Some Partner',
                unitRateUplift: 1.00,
              );

              final result = model.toJson();

              expect(
                result['affiliate_organisation_name'],
                'Some Partner',
              );

              expect(
                result['affiliate_link_subdomain'],
                isNull,
              );

              expect(
                result['fixed_tpi_fee'],
                isNull,
              );

              expect(
                result['standing_charge_uplift'],
                isNull,
              );

              expect(
                result['unit_rate_uplift'],
                '1.0',
              );
            },
          );
        },
      );
    },
  );
}
