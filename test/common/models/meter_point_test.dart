import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

class _MeterPoint extends MeterPoint {
  _MeterPoint({
    super.address,
    super.bespokePpsTariffRates,
    super.bespokeTariffRates,
    super.consumptionStandard,
    super.currentSupplierName,
    super.currentSupplierTariff,
    super.fixedTpiFee,
    super.hasSmartMeter,
    super.meterType,
    super.preferredSsd,
    required super.quote,
    super.quotedProductId,
    super.standingChargeUplift,
    super.tariffCode,
    super.unitRateUplift,
  });
}

void main() {
  group(
    'MeterPoint',
    () {
      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = _MeterPoint(
                address: Address(
                  addressLine1: '87 Doveys Close',
                  addressLine2: 'Address Line 2',
                  addressLine3: 'Address Line 3',
                  county: 'Hampshire',
                  postcode: 'BH24 4BP',
                  town: 'Ringwood',
                ),
                bespokePpsTariffRates: [
                  BespokePpsTariffRates(
                    paymentMethod: BespokePaymentMethod.dd,
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
                  standingCharge: 13.25,
                  unitRate: 3.25,
                  unitRates: [
                    BespokeElectricityUnitRate(
                      paymentMethod: BespokePaymentMethod.dd,
                      rateType: BespokeRateType.standard,
                      unitRate: 12.6,
                    ),
                  ],
                ),
                consumptionStandard: 3100,
                currentSupplierName: 'SUP',
                currentSupplierTariff: 'SUP-123',
                fixedTpiFee: 100,
                hasSmartMeter: false,
                meterType: MeterType.credit,
                preferredSsd: DateTime.parse('2023-01-01T00:00:00.000'),
                quote: Quote(
                  annualPayment: 46576,
                ),
                quotedProductId: 123,
                standingChargeUplift: 0.7,
                tariffCode: 'E-1R-VAR-17-01-11-A',
                unitRateUplift: 0.5,
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
                3100,
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
                result['preferred_ssd'],
                '2023-01-01T00:00:00.000',
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
                'E-1R-VAR-17-01-11-A',
              );

              expect(
                result['unit_rate_uplift'],
                '0.5',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = _MeterPoint(
                quote: Quote(
                  annualPayment: 46576,
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
