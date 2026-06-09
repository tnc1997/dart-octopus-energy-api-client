import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'GasMeterPoint',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'address': {
                  'address_line_1': '87 Doveys Close',
                  'address_line_2': 'Address Line 2',
                  'address_line_3': 'Address Line 3',
                  'county': 'Hampshire',
                  'delivery_point_identifier': '1234567890',
                  'postcode': 'BH24 4BP',
                  'town': 'Ringwood',
                },
                'bespoke_pps_tariff_rates': [
                  {
                    'payment_method': 'NDD',
                    'standing_charge': '0.1',
                    'unit_rate': '0.2',
                    'unit_rates': [
                      {
                        'payment_method': 'DD',
                        'rate_type': 'STANDARD',
                        'unit_rate': '0.3',
                      }
                    ],
                  }
                ],
                'bespoke_tariff_rates': {
                  'standing_charge': '0.4',
                  'unit_rate': '0.5',
                  'unit_rates': [
                    {
                      'payment_method': 'PP',
                      'rate_type': 'OFF_PEAK',
                      'unit_rate': '0.6',
                    }
                  ],
                },
                'consumption_standard': 12500,
                'current_supplier_name': 'SUP',
                'current_supplier_tariff': 'SUP-123',
                'fixed_tpi_fee': 100,
                'has_smart_meter': false,
                'meter_type': 'CREDIT',
                'mprn': '3016362107',
                'preferred_ssd': '1970-01-01T00:00:00.000Z',
                'quote': {
                  'annual_payment': 44961,
                },
                'quoted_product_id': 123,
                'standing_charge_uplift': '0.7',
                'tariff_code': 'G-1R-VAR-17-01-11-A',
                'unit_rate_uplift': '0.8',
              };

              final result = GasMeterPoint.fromJson(json);

              expect(
                result.address,
                isA<Address>(),
              );

              expect(
                result.bespokePpsTariffRates,
                isA<List<BespokePpsTariffRates>>().having(
                  (bespokePpsTariffRates) => bespokePpsTariffRates.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.bespokeTariffRates,
                isA<BespokeTariffRates>(),
              );

              expect(
                result.consumptionStandard,
                12500,
              );

              expect(
                result.currentSupplierName,
                'SUP',
              );

              expect(
                result.currentSupplierTariff,
                'SUP-123',
              );

              expect(
                result.fixedTpiFee,
                100,
              );

              expect(
                result.hasSmartMeter,
                isFalse,
              );

              expect(
                result.meterType,
                MeterType.credit,
              );

              expect(
                result.mprn,
                '3016362107',
              );

              expect(
                result.preferredSsd,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.quote,
                isA<Quote>(),
              );

              expect(
                result.quotedProductId,
                123,
              );

              expect(
                result.standingChargeUplift,
                0.7,
              );

              expect(
                result.tariffCode,
                'G-1R-VAR-17-01-11-A',
              );

              expect(
                result.unitRateUplift,
                0.8,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'quote': {
                  'annual_payment': 44961,
                },
              };

              final result = GasMeterPoint.fromJson(json);

              expect(
                result.address,
                isNull,
              );

              expect(
                result.bespokePpsTariffRates,
                isNull,
              );

              expect(
                result.bespokeTariffRates,
                isNull,
              );

              expect(
                result.consumptionStandard,
                isNull,
              );

              expect(
                result.currentSupplierName,
                isNull,
              );

              expect(
                result.currentSupplierTariff,
                isNull,
              );

              expect(
                result.fixedTpiFee,
                isNull,
              );

              expect(
                result.hasSmartMeter,
                isNull,
              );

              expect(
                result.meterType,
                isNull,
              );

              expect(
                result.mprn,
                isNull,
              );

              expect(
                result.preferredSsd,
                isNull,
              );

              expect(
                result.quote,
                isA<Quote>(),
              );

              expect(
                result.quotedProductId,
                isNull,
              );

              expect(
                result.standingChargeUplift,
                isNull,
              );

              expect(
                result.tariffCode,
                isNull,
              );

              expect(
                result.unitRateUplift,
                isNull,
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = GasMeterPoint(
                address: Address(
                  addressLine1: '87 Doveys Close',
                  addressLine2: 'Address Line 2',
                  addressLine3: 'Address Line 3',
                  county: 'Hampshire',
                  deliveryPointIdentifier: '1234567890',
                  postcode: 'BH24 4BP',
                  town: 'Ringwood',
                ),
                bespokePpsTariffRates: [
                  BespokePpsTariffRates(
                    paymentMethod: BespokePaymentMethod.ndd,
                    standingCharge: 0.1,
                    unitRate: 0.2,
                    unitRates: [
                      BespokeElectricityUnitRate(
                        paymentMethod: BespokePaymentMethod.dd,
                        rateType: BespokeRateType.standard,
                        unitRate: 0.3,
                      ),
                    ],
                  ),
                ],
                bespokeTariffRates: BespokeTariffRates(
                  standingCharge: 0.4,
                  unitRate: 0.5,
                  unitRates: [
                    BespokeElectricityUnitRate(
                      paymentMethod: BespokePaymentMethod.pp,
                      rateType: BespokeRateType.offPeak,
                      unitRate: 0.6,
                    ),
                  ],
                ),
                consumptionStandard: 12500,
                currentSupplierName: 'SUP',
                currentSupplierTariff: 'SUP-123',
                fixedTpiFee: 100,
                hasSmartMeter: false,
                meterType: MeterType.credit,
                mprn: '3016362107',
                preferredSsd: DateTime.parse('1970-01-01T00:00:00.000Z'),
                quote: Quote(
                  annualPayment: 44961,
                ),
                quotedProductId: 123,
                standingChargeUplift: 0.7,
                tariffCode: 'G-1R-VAR-17-01-11-A',
                unitRateUplift: 0.8,
              );

              final result = model.toJson();

              expect(
                result['address'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['bespoke_pps_tariff_rates'],
                isA<List<Map<String, dynamic>>>().having(
                  (bespokePpsTariffRates) => bespokePpsTariffRates.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['bespoke_tariff_rates'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['consumption_standard'],
                12500,
              );

              expect(
                result['current_supplier_name'],
                'SUP',
              );

              expect(
                result['current_supplier_tariff'],
                'SUP-123',
              );

              expect(
                result['fixed_tpi_fee'],
                100,
              );

              expect(
                result['has_smart_meter'],
                isFalse,
              );

              expect(
                result['meter_type'],
                'CREDIT',
              );

              expect(
                result['mprn'],
                '3016362107',
              );

              expect(
                result['preferred_ssd'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['quote'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['quoted_product_id'],
                123,
              );

              expect(
                result['standing_charge_uplift'],
                '0.7',
              );

              expect(
                result['tariff_code'],
                'G-1R-VAR-17-01-11-A',
              );

              expect(
                result['unit_rate_uplift'],
                '0.8',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = GasMeterPoint(
                quote: Quote(
                  annualPayment: 44961,
                ),
              );

              final result = model.toJson();

              expect(
                result['address'],
                isNull,
              );

              expect(
                result['bespoke_pps_tariff_rates'],
                isNull,
              );

              expect(
                result['bespoke_tariff_rates'],
                isNull,
              );

              expect(
                result['consumption_standard'],
                isNull,
              );

              expect(
                result['current_supplier_name'],
                isNull,
              );

              expect(
                result['current_supplier_tariff'],
                isNull,
              );

              expect(
                result['fixed_tpi_fee'],
                isNull,
              );

              expect(
                result['has_smart_meter'],
                isNull,
              );

              expect(
                result['meter_type'],
                isNull,
              );

              expect(
                result['mprn'],
                isNull,
              );

              expect(
                result['preferred_ssd'],
                isNull,
              );

              expect(
                result['quote'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['quoted_product_id'],
                isNull,
              );

              expect(
                result['standing_charge_uplift'],
                isNull,
              );

              expect(
                result['tariff_code'],
                isNull,
              );

              expect(
                result['unit_rate_uplift'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
