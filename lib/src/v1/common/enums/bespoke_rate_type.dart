enum BespokeRateType {
  capacityMarket,
  eco7Day,
  eco7Night,
  evDevice,
  evDeviceOffPeak,
  evDevicePeak,
  hmcGuaranteeAdvance,
  hmcGuaranteeFull,
  nuclearRab,
  offPeak,
  offPeakWeekends,
  peak,
  standard,
  summer,
  summerOffPeak,
  summerPeak,
  summerWeekendsOffPeakWinter,
  tnuos,
  weekday,
  weekendsOther,
  winter,
  winterOffPeak,
  winterPeak;

  factory BespokeRateType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'CAPACITY_MARKET':
        return BespokeRateType.capacityMarket;
      case 'ECO7_DAY':
        return BespokeRateType.eco7Day;
      case 'ECO7_NIGHT':
        return BespokeRateType.eco7Night;
      case 'EV_DEVICE':
        return BespokeRateType.evDevice;
      case 'EV_DEVICE_OFF_PEAK':
        return BespokeRateType.evDeviceOffPeak;
      case 'EV_DEVICE_PEAK':
        return BespokeRateType.evDevicePeak;
      case 'HMC_GUARANTEE_ADVANCE':
        return BespokeRateType.hmcGuaranteeAdvance;
      case 'HMC_GUARANTEE_FULL':
        return BespokeRateType.hmcGuaranteeFull;
      case 'NUCLEAR_RAB':
        return BespokeRateType.nuclearRab;
      case 'OFF_PEAK':
        return BespokeRateType.offPeak;
      case 'OFF_PEAK_WEEKENDS':
        return BespokeRateType.offPeakWeekends;
      case 'PEAK':
        return BespokeRateType.peak;
      case 'STANDARD':
        return BespokeRateType.standard;
      case 'SUMMER':
        return BespokeRateType.summer;
      case 'SUMMER_OFF_PEAK':
        return BespokeRateType.summerOffPeak;
      case 'SUMMER_PEAK':
        return BespokeRateType.summerPeak;
      case 'SUMMER_WEEKENDS_OFF_PEAK_WINTER':
        return BespokeRateType.summerWeekendsOffPeakWinter;
      case 'TNUOS':
        return BespokeRateType.tnuos;
      case 'WEEKDAY':
        return BespokeRateType.weekday;
      case 'WEEKENDS_OTHER':
        return BespokeRateType.weekendsOther;
      case 'WINTER':
        return BespokeRateType.winter;
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
      case BespokeRateType.evDeviceOffPeak:
        return 'EV_DEVICE_OFF_PEAK';
      case BespokeRateType.evDevicePeak:
        return 'EV_DEVICE_PEAK';
      case BespokeRateType.hmcGuaranteeAdvance:
        return 'HMC_GUARANTEE_ADVANCE';
      case BespokeRateType.hmcGuaranteeFull:
        return 'HMC_GUARANTEE_FULL';
      case BespokeRateType.nuclearRab:
        return 'NUCLEAR_RAB';
      case BespokeRateType.offPeak:
        return 'OFF_PEAK';
      case BespokeRateType.offPeakWeekends:
        return 'OFF_PEAK_WEEKENDS';
      case BespokeRateType.peak:
        return 'PEAK';
      case BespokeRateType.standard:
        return 'STANDARD';
      case BespokeRateType.summer:
        return 'SUMMER';
      case BespokeRateType.summerOffPeak:
        return 'SUMMER_OFF_PEAK';
      case BespokeRateType.summerPeak:
        return 'SUMMER_PEAK';
      case BespokeRateType.summerWeekendsOffPeakWinter:
        return 'SUMMER_WEEKENDS_OFF_PEAK_WINTER';
      case BespokeRateType.tnuos:
        return 'TNUOS';
      case BespokeRateType.weekday:
        return 'WEEKDAY';
      case BespokeRateType.weekendsOther:
        return 'WEEKENDS_OTHER';
      case BespokeRateType.winter:
        return 'WINTER';
      case BespokeRateType.winterOffPeak:
        return 'WINTER_OFF_PEAK';
      case BespokeRateType.winterPeak:
        return 'WINTER_PEAK';
    }
  }
}
