import '../enums/meter_type.dart';
import 'address.dart';
import 'bespoke_pps_tariff_rates.dart';
import 'bespoke_tariff_rates.dart';
import 'quote.dart';

abstract class MeterPoint {
  Address? address;
  List<BespokePpsTariffRates>? bespokePpsTariffRates;
  BespokeTariffRates? bespokeTariffRates;
  int? consumptionStandard;
  String? currentSupplierName;
  String? currentSupplierTariff;
  int? fixedTpiFee;
  bool? hasSmartMeter;
  MeterType? meterType;
  DateTime? preferredSsd;
  Quote quote;
  int? quotedProductId;
  String? standingChargeUplift;
  String? tariffCode;
  String? unitRateUplift;

  MeterPoint({
    this.address,
    this.bespokePpsTariffRates,
    this.bespokeTariffRates,
    this.consumptionStandard,
    this.currentSupplierName,
    this.currentSupplierTariff,
    this.fixedTpiFee,
    this.hasSmartMeter,
    this.meterType,
    this.preferredSsd,
    required this.quote,
    this.quotedProductId,
    this.standingChargeUplift,
    this.tariffCode,
    this.unitRateUplift,
  });

  Map<String, dynamic> toJson() {
    return {
      'address': address?.toJson(),
      'bespoke_pps_tariff_rates':
          bespokePpsTariffRates?.map((e) => e.toJson()).toList(),
      'bespoke_tariff_rates': bespokeTariffRates?.toJson(),
      'consumption_standard': consumptionStandard,
      'current_supplier_name': currentSupplierName,
      'current_supplier_tariff': currentSupplierTariff,
      'fixed_tpi_fee': fixedTpiFee,
      'has_smart_meter': hasSmartMeter,
      'meter_type': meterType?.toJson(),
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'quote': quote.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift,
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift,
    };
  }
}
