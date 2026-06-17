import '../enums/installation_technology_type.dart';

class Installation {
  /// The total capacity of the installation in kW.
  double? capacityInKw;

  /// The estimated annual generation of the installation in kWh.
  double? estimatedAnnualGenerationInKwh;

  /// The Feed-in Tariff ID.
  String? fitId;

  /// The REGO accreditation number.
  String? regoId;

  /// The technology type for the installation. If there are multiple
  /// technologies at one site then provide multiple installations.
  InstallationTechnologyType? technologyType;

  Installation({
    this.capacityInKw,
    this.estimatedAnnualGenerationInKwh,
    this.fitId,
    this.regoId,
    this.technologyType,
  });

  factory Installation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Installation(
      capacityInKw: json['capacity_in_kw'] is num
          ? (json['capacity_in_kw'] as num).toDouble()
          : (json['capacity_in_kw'] as String?)?.isNotEmpty == true
              ? double.parse(json['capacity_in_kw'] as String)
              : null,
      estimatedAnnualGenerationInKwh:
          json['estimated_annual_generation_in_kwh'] is num
              ? (json['estimated_annual_generation_in_kwh'] as num).toDouble()
              : (json['estimated_annual_generation_in_kwh'] as String?)
                          ?.isNotEmpty ==
                      true
                  ? double.parse(
                      json['estimated_annual_generation_in_kwh'] as String)
                  : null,
      fitId: json['fit_id'] as String?,
      regoId: json['rego_id'] as String?,
      technologyType: json['technology_type'] != null
          ? InstallationTechnologyType.fromJson(
              json['technology_type'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'capacity_in_kw': capacityInKw?.toString(),
      'estimated_annual_generation_in_kwh':
          estimatedAnnualGenerationInKwh?.toString(),
      'fit_id': fitId,
      'rego_id': regoId,
      'technology_type': technologyType?.toJson(),
    };
  }
}
