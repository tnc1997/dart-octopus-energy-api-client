import '../enums/meter_type.dart';
import 'address.dart';
import 'bespoke_pps_tariff_rates.dart';
import 'bespoke_tariff_rates.dart';
import 'quote.dart';

abstract class MeterPoint {
  Address? address;

  /// If applicable, must contain two objects: one for direct debit bespoke and
  /// another for non-direct debit bespoke rates. Cannot be used in conjunction
  /// with 'bespoke_tariff_rates'.
  List<BespokePpsTariffRates>? bespokePpsTariffRates;

  /// A json object containing bespoke tariff rates, if applicable.
  ///
  /// Cannot be used in conjunction with 'bespoke_pps_tariff_rates'.
  BespokeTariffRates? bespokeTariffRates;

  /// The expected annual consumption for the standard register in kWh.
  ///
  /// Required if standard tariff.
  int? consumptionStandard;

  String? currentSupplierName;

  String? currentSupplierTariff;

  int? fixedTpiFee;

  /// Whether a smart meter is installed. The default is 'false'.
  bool? hasSmartMeter;

  /// The default is 'CREDIT', which represents any kind of traditional credit
  /// meter or smart meter. This field is mandatory for traditional prepay
  /// meters, for which the value 'PREPAYMENT' should be used.
  MeterType? meterType;

  DateTime? preferredSsd;

  Quote? quote;

  /// The ID of the market supply quoted product returned by the
  /// 'QuoteNewMeterPoints' or 'QuoteNewMeterPointsOnBespokeProducts' mutation
  /// which was selected by the customer for this meter point. Required if a
  /// 'quote_request_code' is supplied.
  int? quotedProductId;

  /// The amount to be added to the standing charge as commission (a string,
  /// pence per day).
  double? standingChargeUplift;

  /// The tariff code as stored by the supplier.
  ///
  /// Must match an available tariff on the 'sold_at' datetime for the
  /// authenticating partner. Required if no 'quote_request_code' is supplied.
  String? tariffCode;

  /// The amount to be added to the unit rate as commission (a string, pence per
  /// kWh).
  double? unitRateUplift;

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
    this.quote,
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
      'quote': quote?.toJson(),
      'quoted_product_id': quotedProductId,
      'standing_charge_uplift': standingChargeUplift?.toString(),
      'tariff_code': tariffCode,
      'unit_rate_uplift': unitRateUplift?.toString(),
    };
  }
}
