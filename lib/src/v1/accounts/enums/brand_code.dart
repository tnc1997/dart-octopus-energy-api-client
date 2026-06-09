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
