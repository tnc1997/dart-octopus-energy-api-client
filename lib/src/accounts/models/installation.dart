import '../enums/installation_technology_type.dart';

class Installation {
  double capacityInKw;
  double estimatedAnnualGenerationInKwh;
  String? fitId;
  String? regoId;
  InstallationTechnologyType technologyType;

  Installation({
    required this.capacityInKw,
    required this.estimatedAnnualGenerationInKwh,
    this.fitId,
    this.regoId,
    required this.technologyType,
  });

  factory Installation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Installation(
      capacityInKw: double.parse(json['capacity_in_kw'] as String),
      estimatedAnnualGenerationInKwh:
          double.parse(json['estimated_annual_generation_in_kwh'] as String),
      fitId: json['fit_id'] as String?,
      regoId: json['rego_id'] as String?,
      technologyType: InstallationTechnologyType.fromJson(
          json['technology_type'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'capacity_in_kw': capacityInKw.toString(),
      'estimated_annual_generation_in_kwh':
          estimatedAnnualGenerationInKwh.toString(),
      'fit_id': fitId,
      'rego_id': regoId,
      'technology_type': technologyType.toJson(),
    };
  }
}
