import '../enums/meter_type.dart';
import 'address.dart';
import 'agreement.dart';
import 'bespoke_pps_tariff_rates.dart';
import 'bespoke_tariff_rates.dart';
import 'gas_meter_point_meter.dart';
import 'meter_point.dart';
import 'quote.dart';

class GasMeterPoint extends MeterPoint<GasMeterPointMeter> {
  Address? address;
  List<BespokePpsTariffRates>? bespokePpsTariffRates;
  BespokeTariffRates? bespokeTariffRates;
  String? currentSupplierName;
  String? currentSupplierTariff;
  int? fixedTpiFee;
  bool? hasSmartMeter;
  MeterType? meterType;
  String? mprn;
  DateTime? preferredSsd;
  Quote? quote;
  int? quotedProductId;
  String? standingChargeUplift;
  String? tariffCode;
  String? unitRateUplift;

  GasMeterPoint({
    this.address,
    List<Agreement>? agreements,
    this.bespokePpsTariffRates,
    this.bespokeTariffRates,
    int? consumptionStandard,
    this.currentSupplierName,
    this.currentSupplierTariff,
    this.fixedTpiFee,
    this.hasSmartMeter,
    this.meterType,
    List<GasMeterPointMeter>? meters,
    this.mprn,
    this.preferredSsd,
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

  factory GasMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GasMeterPoint(
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
              json['bespoke_tariff_rates'] as Map<String, dynamic>)
          : null,
      consumptionStandard: (json['consumption_standard'] as num?)?.toInt(),
      currentSupplierName: json['current_supplier_name'] as String?,
      currentSupplierTariff: json['current_supplier_tariff'] as String?,
      fixedTpiFee: (json['fixed_tpi_fee'] as num?)?.toInt(),
      hasSmartMeter: json['has_smart_meter'] as bool?,
      meterType: json['meter_type'] != null
          ? MeterType.fromJson(json['meter_type'] as String)
          : null,
      meters: (json['meters'] as List<dynamic>?)
          ?.map((e) => GasMeterPointMeter.fromJson(e as Map<String, dynamic>))
          .toList(),
      mprn: json['mprn'] as String?,
      preferredSsd: json['preferred_ssd'] != null
          ? DateTime.parse(json['preferred_ssd'] as String)
          : null,
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
      'consumption_standard': consumptionStandard,
      'current_supplier_name': currentSupplierName,
      'current_supplier_tariff': currentSupplierTariff,
      'fixed_tpi_fee': fixedTpiFee,
      'has_smart_meter': hasSmartMeter,
      'meter_type': meterType?.toJson(),
      'meters': meters?.map((e) => e.toJson()).toList(),
      'mprn': mprn,
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'quote': quote?.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift,
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift,
    };
  }
}
