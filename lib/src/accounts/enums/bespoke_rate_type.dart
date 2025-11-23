enum BespokeRateType {
  capacityMarket,
  eco7Day,
  eco7Night,
  evDevice,
  nuclearRab,
  offPeak,
  standard,
  summerOffPeak,
  summerPeak,
  tnous,
  winterOffPeak,
  winterPeak;

  factory BespokeRateType.fromJson(String json) {
    switch (json) {
      case 'CAPACITY_MARKET':
        return BespokeRateType.capacityMarket;
      case 'ECO7_DAY':
        return BespokeRateType.eco7Day;
      case 'ECO7_NIGHT':
        return BespokeRateType.eco7Night;
      case 'EV_DEVICE':
        return BespokeRateType.evDevice;
      case 'NUCLEAR_RAB':
        return BespokeRateType.nuclearRab;
      case 'OFF_PEAK':
        return BespokeRateType.offPeak;
      case 'STANDARD':
        return BespokeRateType.standard;
      case 'SUMMER_OFF_PEAK':
        return BespokeRateType.summerOffPeak;
      case 'SUMMER_PEAK':
        return BespokeRateType.summerPeak;
      case 'TNUOS':
        return BespokeRateType.tnous;
      case 'WINTER_OFF_PEAK':
        return BespokeRateType.winterOffPeak;
      case 'WINTER_PEAK':
        return BespokeRateType.winterPeak;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case BespokeRateType.capacityMarket:
        return 'CAPACITY_MARKET';
      case BespokeRateType.eco7Day:
        return 'ECO7_DAY';
      case BespokeRateType.eco7Night:
        return 'ECO7_NIGHT';
      case BespokeRateType.evDevice:
        return 'EV_DEVICE';
      case BespokeRateType.nuclearRab:
        return 'NUCLEAR_RAB';
      case BespokeRateType.offPeak:
        return 'OFF_PEAK';
      case BespokeRateType.standard:
        return 'STANDARD';
      case BespokeRateType.summerOffPeak:
        return 'SUMMER_OFF_PEAK';
      case BespokeRateType.summerPeak:
        return 'SUMMER_PEAK';
      case BespokeRateType.tnous:
        return 'TNUOS';
      case BespokeRateType.winterOffPeak:
        return 'WINTER_OFF_PEAK';
      case BespokeRateType.winterPeak:
        return 'WINTER_PEAK';
    }
  }
}
