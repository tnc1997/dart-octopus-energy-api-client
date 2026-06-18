/// A code to specify the account should be for a particular brand.
///
/// This is only required when creating an account in an instance with multiple
/// brands and for which the requested brand is not the default brand of that
/// instance.
enum BrandCode {
  coopEnergy,
  londonPower,
  octopusEnergy;

  factory BrandCode.fromJson(
    String json,
  ) {
    switch (json) {
      case 'COOP_ENERGY':
        return BrandCode.coopEnergy;
      case 'LONDON_POWER':
        return BrandCode.londonPower;
      case 'OCTOPUS_ENERGY':
        return BrandCode.octopusEnergy;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case BrandCode.coopEnergy:
        return 'COOP_ENERGY';
      case BrandCode.londonPower:
        return 'LONDON_POWER';
      case BrandCode.octopusEnergy:
        return 'OCTOPUS_ENERGY';
    }
  }
}
