import '../enums/meter_type.dart';
import 'address.dart';
import 'agreement.dart';
import 'bespoke_pps_tariff_rates.dart';
import 'bespoke_tariff_rates.dart';
import 'electricity_meter_point_meter.dart';
import 'export_details.dart';
import 'meter_point.dart';
import 'quote.dart';

class ElectricityMeterPoint extends MeterPoint<ElectricityMeterPointMeter> {
  Address? address;
  List<BespokePpsTariffRates>? bespokePpsTariffRates;
  BespokeTariffRates? bespokeTariffRates;
  int? consumptionDay;
  int? consumptionNight;
  int? consumptionOffPeak;
  String? currentSupplierName;
  String? currentSupplierTariff;
  ExportDetails? exportDetails;
  int? fixedTpiFee;
  bool? hasSmartMeter;
  bool? isExport;
  bool? isHalfHourly;
  MeterType? meterType;
  String? mpan;
  DateTime? preferredSsd;
  int? profileClass;
  Quote? quote;
  int? quotedProductId;
  String? standingChargeUplift;
  String? tariffCode;
  String? unitRateUplift;

  ElectricityMeterPoint({
    this.address,
    List<Agreement>? agreements,
    this.bespokePpsTariffRates,
    this.bespokeTariffRates,
    this.consumptionDay,
    this.consumptionNight,
    this.consumptionOffPeak,
    int? consumptionStandard,
    this.currentSupplierName,
    this.currentSupplierTariff,
    this.exportDetails,
    this.fixedTpiFee,
    this.hasSmartMeter,
    this.isExport,
    this.isHalfHourly,
    this.meterType,
    List<ElectricityMeterPointMeter>? meters,
    this.mpan,
    this.preferredSsd,
    this.profileClass,
    this.quote,
    this.quotedProductId,
    this.standingChargeUplift,
    this.tariffCode,
    this.unitRateUplift,
  }) : super(
          agreements: agreements,
          consumptionStandard: consumptionStandard,
          meters: meters,
        );

  factory ElectricityMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElectricityMeterPoint(
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => Agreement.fromJson(e as Map<String, dynamic>))
          .toList(),
      bespokePpsTariffRates: (json['bespoke_pps_tariff_rates']
              as List<dynamic>?)
          ?.map(
              (e) => BespokePpsTariffRates.fromJson(e as Map<String, dynamic>))
          .toList(),
      bespokeTariffRates: json['bespoke_tariff_rates'] != null
          ? BespokeTariffRates.fromJson(
              json['bespoke_tariff_rates'] as Map<String, dynamic>,
            )
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
      hasSmartMeter: json['has_smart_meter'] as bool?,
      isExport: json['is_export'] as bool?,
      isHalfHourly: json['is_half_hourly'] as bool?,
      meterType: json['meter_type'] != null
          ? MeterType.fromJson(json['meter_type'] as String)
          : null,
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) =>
              ElectricityMeterPointMeter.fromJson(e as Map<String, dynamic>))
          .toList(),
      mpan: json['mpan'] as String?,
      preferredSsd: json['preferred_ssd'] != null
          ? DateTime.parse(json['preferred_ssd'] as String)
          : null,
      profileClass: (json['profile_class'] as num?)?.toInt(),
      quote: json['quote'] != null
          ? Quote.fromJson(json['quote'] as Map<String, dynamic>)
          : null,
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
      'agreements': agreements?.map((e) => e.toJson()).toList(),
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
      'has_smart_meter': hasSmartMeter,
      'is_export': isExport,
      'is_half_hourly': isHalfHourly,
      'meter_type': meterType?.toJson(),
      'meters': meters?.map((e) => e.toJson()).toList(),
      'mpan': mpan,
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'profile_class': profileClass,
      'quote': quote?.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift,
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift,
    };
  }
}
