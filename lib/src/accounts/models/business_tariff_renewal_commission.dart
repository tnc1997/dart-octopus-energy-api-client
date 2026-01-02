class BusinessTariffRenewalCommission {
  String affiliateOrganisationName;
  String? affiliateLinkSubdomain;
  int? fixedTpiFee;
  double? standingChargeUplift;
  double unitRateUplift;

  BusinessTariffRenewalCommission({
    required this.affiliateOrganisationName,
    this.affiliateLinkSubdomain,
    this.fixedTpiFee,
    this.standingChargeUplift,
    required this.unitRateUplift,
  });

  factory BusinessTariffRenewalCommission.fromJson(
    Map<String, dynamic> json,
  ) {
    return BusinessTariffRenewalCommission(
      affiliateOrganisationName: json['affiliate_organisation_name'] as String,
      affiliateLinkSubdomain: json['affiliate_link_subdomain'] as String?,
      fixedTpiFee: (json['fixed_tpi_fee'] as num?)?.toInt(),
      standingChargeUplift:
          (json['standing_charge_uplift'] as num?)?.toDouble(),
      unitRateUplift: (json['unit_rate_uplift'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'affiliate_link_subdomain': affiliateLinkSubdomain,
      'affiliate_organisation_name': affiliateOrganisationName,
      'standing_charge_uplift': standingChargeUplift,
      'unit_rate_uplift': unitRateUplift,
    };
  }
}
