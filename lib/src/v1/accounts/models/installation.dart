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
      // The schema types these as decimal strings, but a response may return
      // them as JSON numbers (as the consumption endpoint does). Accept both.
      capacityInKw: json['capacity_in_kw'] == null
          ? null
          : json['capacity_in_kw'] is String
              ? double.parse(json['capacity_in_kw'] as String)
              : (json['capacity_in_kw'] as num).toDouble(),
      estimatedAnnualGenerationInKwh:
          json['estimated_annual_generation_in_kwh'] == null
              ? null
              : json['estimated_annual_generation_in_kwh'] is String
                  ? double.parse(
                      json['estimated_annual_generation_in_kwh'] as String)
                  : (json['estimated_annual_generation_in_kwh'] as num)
                      .toDouble(),
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
