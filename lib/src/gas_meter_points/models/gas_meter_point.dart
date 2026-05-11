import '../../common/enums/meter_type.dart';
import '../../common/models/address.dart';
import '../../common/models/bespoke_pps_tariff_rates.dart';
import '../../common/models/bespoke_tariff_rates.dart';
import '../../common/models/meter_point.dart';
import '../../common/models/quote.dart';
import '../../common/utils/decimal_utils.dart';

class GasMeterPoint extends MeterPoint {
  String? mprn;

  GasMeterPoint({
    super.address,
    super.bespokePpsTariffRates,
    super.bespokeTariffRates,
    super.consumptionStandard,
    super.currentSupplierName,
    super.currentSupplierTariff,
    super.fixedTpiFee,
    super.hasSmartMeter,
    super.meterType,
    this.mprn,
    super.preferredSsd,
    required super.quote,
    super.quotedProductId,
    super.standingChargeUplift,
    super.tariffCode,
    super.unitRateUplift,
  });

  factory GasMeterPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GasMeterPoint(
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
      consumptionStandard: (json['consumption_standard'] as num?)?.toInt(),
      currentSupplierName: json['current_supplier_name'] as String?,
      currentSupplierTariff: json['current_supplier_tariff'] as String?,
      fixedTpiFee: (json['fixed_tpi_fee'] as num?)?.toInt(),
      hasSmartMeter: json['has_smart_meter'] as bool?,
      meterType: json['meter_type'] != null
          ? MeterType.fromJson(json['meter_type'] as String)
          : null,
      mprn: json['mprn'] as String?,
      preferredSsd: json['preferred_ssd'] != null
          ? DateTime.parse(json['preferred_ssd'] as String)
          : null,
      quote: Quote.fromJson(json['quote'] as Map<String, dynamic>),
      quotedProductId: (json['quoted_product_id'] as num?)?.toInt(),
      standingChargeUplift: json['standing_charge_uplift'] != null
          ? parseDecimal(json['standing_charge_uplift'] as String)
          : null,
      tariffCode: json['tariff_code'] as String?,
      unitRateUplift: json['unit_rate_uplift'] != null
          ? parseDecimal(json['unit_rate_uplift'] as String)
          : null,
    );
  }

  @override
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
      'mprn': mprn,
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'quote': quote.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift?.toString(),
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift?.toString(),
    };
  }
}
