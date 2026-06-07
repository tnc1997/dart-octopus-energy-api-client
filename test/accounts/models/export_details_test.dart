import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ExportDetails',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'import_mpan': '1234567890123',
                'installations': [
                  {
                    'capacity_in_kw': '4.0',
                    'estimated_annual_generation_in_kwh': '3500.0',
                    'fit_id': 'FIT123',
                    'rego_id': 'REGO456',
                    'technology_type': 'Solar',
                  }
                ],
                'site_contact_email': 'chris@example.com',
                'site_contact_name': 'Chris Johnson',
                'site_contact_phone': '0123456789',
              };

              final result = ExportDetails.fromJson(json);

              expect(
                result.importMpan,
                '1234567890123',
              );

              expect(
                result.installations,
                isA<List<Installation>>().having(
                  (installations) => installations.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.siteContactEmail,
                'chris@example.com',
              );

              expect(
                result.siteContactName,
                'Chris Johnson',
              );

              expect(
                result.siteContactPhone,
                '0123456789',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = ExportDetails.fromJson(json);

              expect(
                result.importMpan,
                isNull,
              );

              expect(
                result.installations,
                isNull,
              );

              expect(
                result.siteContactEmail,
                isNull,
              );

              expect(
                result.siteContactName,
                isNull,
              );

              expect(
                result.siteContactPhone,
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
              final model = ExportDetails(
                importMpan: '1234567890123',
                installations: [
                  Installation(
                    capacityInKw: 4.0,
                    estimatedAnnualGenerationInKwh: 3500.0,
                    fitId: 'FIT123',
                    regoId: 'REGO456',
                    technologyType: InstallationTechnologyType.solar,
                  ),
                ],
                siteContactEmail: 'chris@example.com',
                siteContactName: 'Chris Johnson',
                siteContactPhone: '0123456789',
              );

              final result = model.toJson();

              expect(
                result['import_mpan'],
                '1234567890123',
              );

              expect(
                result['installations'],
                isA<List<Map<String, dynamic>>>().having(
                  (installations) => installations.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['site_contact_email'],
                'chris@example.com',
              );

              expect(
                result['site_contact_name'],
                'Chris Johnson',
              );

              expect(
                result['site_contact_phone'],
                '0123456789',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = ExportDetails();

              final result = model.toJson();

              expect(
                result['import_mpan'],
                isNull,
              );

              expect(
                result['installations'],
                isNull,
              );

              expect(
                result['site_contact_email'],
                isNull,
              );

              expect(
                result['site_contact_name'],
                isNull,
              );

              expect(
                result['site_contact_phone'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
