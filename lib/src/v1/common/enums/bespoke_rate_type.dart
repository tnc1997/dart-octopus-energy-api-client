/// The rate type of the unit rate.
///
/// If the register_identifier is not provided, the rate type must be provided
/// instead.
enum BespokeRateType {
  /// Capacity Market rate (pence per day) for business tariffs.
  capacityMarket,

  /// Day (or peak) rate (pence per kWh).
  eco7Day,

  /// Night (or off-peak) rate (pence per kWh).
  eco7Night,

  /// Electric vehicle device rate (pence per kWh) for sub-meter billing.
  evDevice,

  /// Electric vehicle device off-peak rate (pence per kWh) for sub-meter
  /// billing.
  evDeviceOffPeak,

  /// Electric vehicle device peak rate (pence per kWh) for sub-meter billing.
  evDevicePeak,

  /// Hourly Matching Credit Guarantee Advance rate (pence per kWh) for business
  /// tariffs.
  hmcGuaranteeAdvance,

  /// Hourly Matching Credit Guarantee Full rate (pence per kWh) for business
  /// tariffs.
  hmcGuaranteeFull,

  /// Nuclear RAB rate (pence per day) for business tariffs.
  nuclearRab,

  /// Additional off-peak rate for three-rate tariffs (pence per kWh).
  offPeak,

  /// Off peak weekend rate (pence per kWh) for business tariffs.
  offPeakWeekends,

  /// Peak rate (pence per kWh) for business tariffs.
  peak,

  /// Standard rate (pence per kWh).
  standard,

  /// Summer rate (pence per kWh) for business tariffs.
  summer,

  /// Summer off-peak rate (pence per kWh) for two-rate tariffs.
  summerOffPeak,

  /// Summer peak rate (pence per kWh) for two-rate tariffs.
  summerPeak,

  /// A rate that applies during summer, weekends and off-peak in winter periods
  /// (pence per kWh) for business tariffs.
  summerWeekendsOffPeakWinter,

  /// TNUoS rate (pence per day) for business tariffs.
  tnuos,

  /// Weekday rate (pence per kWh) for business tariffs.
  weekday,

  /// Weekend rate (pence per kWh) for business tariffs.
  weekendsOther,

  /// Winter rate (pence per kWh) for business tariffs.
  winter,

  /// Winter off-peak rate (pence per kWh) for two-rate tariffs.
  winterOffPeak,

  /// Winter peak rate (pence per kWh) for two-rate tariffs.
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
