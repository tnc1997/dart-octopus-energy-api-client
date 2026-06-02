import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                  'address_line_1': '742 Evergreen Terrace',
                  'address_line_2': 'Springfield Address Line 2',
                  'address_line_3': 'Springfield Address Line 3',
                  'county': 'Springfield County',
                  'delivery_point_identifier': '1234567890',
                  'postcode': 'AB1 2CD',
                  'town': 'Springfield Town',
                },
                'bespoke_pps_tariff_rates': [
                  {
                    'payment_method': 'DD',
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
                      'payment_method': 'DD',
                      'rate_type': 'STANDARD',
                      'unit_rate': '0.6',
                    }
                  ],
                },
                'consumption_standard': 2000,
                'current_supplier_name': 'Octopus Energy',
                'current_supplier_tariff': 'Flexible Octopus',
                'fixed_tpi_fee': 100,
                'has_smart_meter': true,
                'meter_type': 'CREDIT',
                'mprn': '1234567890',
                'preferred_ssd': '1970-01-01T00:00:00.000Z',
                'quote': {
                  'annual_payment': 1000,
                },
                'quoted_product_id': 123,
                'standing_charge_uplift': '0.7',
                'tariff_code': 'G-1R-VAR-17-01-11-H',
                'unit_rate_uplift': '0.8',
              };

              final result = GasMeterPoint.fromJson(json);

              expect(
                result.address,
                isNotNull,
              );

              expect(
                result.bespokePpsTariffRates,
                hasLength(1),
              );

              expect(
                result.bespokeTariffRates,
                isNotNull,
              );

              expect(
                result.consumptionStandard,
                2000,
              );

              expect(
                result.currentSupplierName,
                'Octopus Energy',
              );

              expect(
                result.currentSupplierTariff,
                'Flexible Octopus',
              );

              expect(
                result.fixedTpiFee,
                100,
              );

              expect(
                result.hasSmartMeter,
                isTrue,
              );

              expect(
                result.meterType,
                MeterType.credit,
              );

              expect(
                result.mprn,
                '1234567890',
              );

              expect(
                result.preferredSsd,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.quote,
                isNotNull,
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
                'G-1R-VAR-17-01-11-H',
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
                  'annual_payment': 1000,
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
                isNotNull,
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
                  addressLine1: '742 Evergreen Terrace',
                  addressLine2: 'Springfield Address Line 2',
                  addressLine3: 'Springfield Address Line 3',
                  county: 'Springfield County',
                  deliveryPointIdentifier: '1234567890',
                  postcode: 'AB1 2CD',
                  town: 'Springfield Town',
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
                  standingCharge: 0.4,
                  unitRate: 0.5,
                  unitRates: [
                    BespokeElectricityUnitRate(
                      paymentMethod: BespokePaymentMethod.dd,
                      rateType: BespokeRateType.standard,
                      unitRate: 0.6,
                    ),
                  ],
                ),
                consumptionStandard: 2000,
                currentSupplierName: 'Octopus Energy',
                currentSupplierTariff: 'Flexible Octopus',
                fixedTpiFee: 100,
                hasSmartMeter: true,
                meterType: MeterType.credit,
                mprn: '1234567890',
                preferredSsd: DateTime.parse('1970-01-01T00:00:00.000Z'),
                quote: Quote(
                  annualPayment: 1000,
                ),
                quotedProductId: 123,
                standingChargeUplift: 0.7,
                tariffCode: 'G-1R-VAR-17-01-11-H',
                unitRateUplift: 0.8,
              );

              final result = model.toJson();

              expect(
                result['address'],
                isNotNull,
              );

              expect(
                result['bespoke_pps_tariff_rates'],
                hasLength(1),
              );

              expect(
                result['bespoke_tariff_rates'],
                isNotNull,
              );

              expect(
                result['consumption_standard'],
                2000,
              );

              expect(
                result['current_supplier_name'],
                'Octopus Energy',
              );

              expect(
                result['current_supplier_tariff'],
                'Flexible Octopus',
              );

              expect(
                result['fixed_tpi_fee'],
                100,
              );

              expect(
                result['has_smart_meter'],
                isTrue,
              );

              expect(
                result['meter_type'],
                'CREDIT',
              );

              expect(
                result['mprn'],
                '1234567890',
              );

              expect(
                result['preferred_ssd'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['quote'],
                isNotNull,
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
                'G-1R-VAR-17-01-11-H',
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
                  annualPayment: 1000,
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
                isNotNull,
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
