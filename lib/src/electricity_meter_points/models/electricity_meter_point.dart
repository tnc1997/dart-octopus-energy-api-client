import '../../accounts/models/export_details.dart';
import '../../common/enums/meter_type.dart';
import '../../common/models/address.dart';
import '../../common/models/bespoke_pps_tariff_rates.dart';
import '../../common/models/bespoke_tariff_rates.dart';
import '../../common/models/meter_point.dart';
import '../../common/models/quote.dart';

class ElectricityMeterPoint extends MeterPoint {
  int? consumptionDay;
  int? consumptionNight;
  int? consumptionOffPeak;
  ExportDetails? exportDetails;
  String? gsp;
  bool? isHalfHourly;
  String? mpan;
  int? profileClass;

  ElectricityMeterPoint({
    Address? address,
    List<BespokePpsTariffRates>? bespokePpsTariffRates,
    BespokeTariffRates? bespokeTariffRates,
    this.consumptionDay,
    this.consumptionNight,
    this.consumptionOffPeak,
    int? consumptionStandard,
    String? currentSupplierName,
    String? currentSupplierTariff,
    this.exportDetails,
    int? fixedTpiFee,
    this.gsp,
    bool? hasSmartMeter,
    this.isHalfHourly,
    MeterType? meterType,
    this.mpan,
    DateTime? preferredSsd,
    this.profileClass,
    required Quote quote,
    int? quotedProductId,
    String? standingChargeUplift,
    String? tariffCode,
    String? unitRateUplift,
  }) : super(
          address: address,
          bespokePpsTariffRates: bespokePpsTariffRates,
          bespokeTariffRates: bespokeTariffRates,
          consumptionStandard: consumptionStandard,
          currentSupplierName: currentSupplierName,
          currentSupplierTariff: currentSupplierTariff,
          fixedTpiFee: fixedTpiFee,
          hasSmartMeter: hasSmartMeter,
          meterType: meterType,
          preferredSsd: preferredSsd,
          quote: quote,
          quotedProductId: quotedProductId,
          standingChargeUplift: standingChargeUplift,
          tariffCode: tariffCode,
          unitRateUplift: unitRateUplift,
        );

  factory ElectricityMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElectricityMeterPoint(
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      bespokePpsTariffRates: (json['bespoke_pps_tariff_rates']
              as List<dynamic>?)
          ?.map(
              (e) => BespokePpsTariffRates.fromJson(e as Map<String, dynamic>))
          .toList(),
      bespokeTariffRates: json['bespoke_tariff_rates'] != null
          ? BespokeTariffRates.fromJson(
              json['bespoke_tariff_rates'] as Map<String, dynamic>)
          : null,
      consumptionDay: (json['consumption_day'] as num?)?.toInt(),
      consumptionNight: (json['consumption_night'] as num?)?.toInt(),
      consumptionOffPeak: (json['consumption_off_peak'] as num?)?.toInt(),
      consumptionStandard: (json['consumption_standard'] as num?)?.toInt(),
      currentSupplierName: json['current_supplier_name'] as String?,
      currentSupplierTariff: json['current_supplier_tariff'] as String?,
      exportDetails: json['export_details'] != null
          ? ExportDetails.fromJson(
              json['export_details'] as Map<String, dynamic>)
          : null,
      fixedTpiFee: (json['fixed_tpi_fee'] as num?)?.toInt(),
      gsp: json['gsp'] as String?,
      hasSmartMeter: json['has_smart_meter'] as bool?,
      isHalfHourly: json['is_half_hourly'] as bool?,
      meterType: json['meter_type'] != null
          ? MeterType.fromJson(json['meter_type'] as String)
          : null,
      mpan: json['mpan'] as String?,
      preferredSsd: json['preferred_ssd'] != null
          ? DateTime.parse(json['preferred_ssd'] as String)
          : null,
      profileClass: (json['profile_class'] as num?)?.toInt(),
      quote: Quote.fromJson(json['quote'] as Map<String, dynamic>),
      quotedProductId: (json['quoted_product_id'] as num?)?.toInt(),
      standingChargeUplift: json['standing_charge_uplift'] as String?,
      tariffCode: json['tariff_code'] as String?,
      unitRateUplift: json['unit_rate_uplift'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'address': address?.toJson(),
      'bespoke_pps_tariff_rates':
          bespokePpsTariffRates?.map((e) => e.toJson()).toList(),
      'bespoke_tariff_rates': bespokeTariffRates?.toJson(),
      'consumption_day': consumptionDay,
      'consumption_night': consumptionNight,
      'consumption_off_peak': consumptionOffPeak,
      'consumption_standard': consumptionStandard,
      'current_supplier_name': currentSupplierName,
      'current_supplier_tariff': currentSupplierTariff,
      'export_details': exportDetails?.toJson(),
      'fixed_tpi_fee': fixedTpiFee,
      'gsp': gsp,
      'has_smart_meter': hasSmartMeter,
      'is_half_hourly': isHalfHourly,
      'meter_type': meterType?.toJson(),
      'mpan': mpan,
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'profile_class': profileClass,
      'quote': quote.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift,
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift,
    };
  }
}
