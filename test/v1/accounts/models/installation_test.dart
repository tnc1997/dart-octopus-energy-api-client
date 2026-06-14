import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Installation',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'capacity_in_kw': '4.0',
                'estimated_annual_generation_in_kwh': '3500.0',
                'fit_id': 'FIT123',
                'rego_id': 'REGO456',
                'technology_type': 'Solar',
              };

              final result = Installation.fromJson(json);

              expect(
                result.capacityInKw,
                4.0,
              );

              expect(
                result.estimatedAnnualGenerationInKwh,
                3500.0,
              );

              expect(
                result.fitId,
                'FIT123',
              );

              expect(
                result.regoId,
                'REGO456',
              );

              expect(
                result.technologyType,
                InstallationTechnologyType.solar,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'capacity_in_kw': '4.0',
                'estimated_annual_generation_in_kwh': '3500.0',
                'technology_type': 'Solar',
              };

              final result = Installation.fromJson(json);

              expect(
                result.capacityInKw,
                4.0,
              );

              expect(
                result.estimatedAnnualGenerationInKwh,
                3500.0,
              );

              expect(
                result.fitId,
                isNull,
              );

              expect(
                result.regoId,
                isNull,
              );

              expect(
                result.technologyType,
                InstallationTechnologyType.solar,
              );
            },
          );

          test(
            'should return model from json with numeric values',
                () {
              // A response may return the decimals as JSON numbers rather than
              // the strings the schema declares.
              final json = <String, dynamic>{
                'capacity_in_kw': 4.0,
                'estimated_annual_generation_in_kwh': 3500.0,
                'technology_type': 'Solar',
              };

              final result = Installation.fromJson(json);

              expect(
                result.capacityInKw,
                4.0,
              );

              expect(
                result.estimatedAnnualGenerationInKwh,
                3500.0,
              );
            },
          );

          test(
            'should return model from json with omitted fields',
            () {
              final json = <String, dynamic>{};

              final result = Installation.fromJson(json);

              expect(
                result.capacityInKw,
                isNull,
              );

              expect(
                result.estimatedAnnualGenerationInKwh,
                isNull,
              );

              expect(
                result.fitId,
                isNull,
              );

              expect(
                result.regoId,
                isNull,
              );

              expect(
                result.technologyType,
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
              final model = Installation(
                capacityInKw: 4.0,
                estimatedAnnualGenerationInKwh: 3500.0,
                fitId: 'FIT123',
                regoId: 'REGO456',
                technologyType: InstallationTechnologyType.solar,
              );

              final result = model.toJson();

              expect(
                result['capacity_in_kw'],
                '4.0',
              );

              expect(
                result['estimated_annual_generation_in_kwh'],
                '3500.0',
              );

              expect(
                result['fit_id'],
                'FIT123',
              );

              expect(
                result['rego_id'],
                'REGO456',
              );

              expect(
                result['technology_type'],
                'Solar',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Installation(
                capacityInKw: 4.0,
                estimatedAnnualGenerationInKwh: 3500.0,
                technologyType: InstallationTechnologyType.solar,
              );

              final result = model.toJson();

              expect(
                result['capacity_in_kw'],
                '4.0',
              );

              expect(
                result['estimated_annual_generation_in_kwh'],
                '3500.0',
              );

              expect(
                result['fit_id'],
                isNull,
              );

              expect(
                result['rego_id'],
                isNull,
              );

              expect(
                result['technology_type'],
                'Solar',
              );
            },
          );
        },
      );
    },
  );
}
