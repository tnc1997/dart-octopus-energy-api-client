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
                  addressLine1: '742 Evergreen Terrace',
                  addressLine2: 'Springfield Address Line 2',
                  addressLine3: 'Springfield Address Line 3',
                  county: 'Springfield County',
                  deliveryPointIdentifier: 'DP123',
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
                preferredSsd: DateTime.parse('2023-01-01T00:00:00.000'),
                quote: Quote(
                  annualPayment: 1000,
                ),
                quotedProductId: 123,
                standingChargeUplift: 0.7,
                tariffCode: 'T123',
                unitRateUplift: 0.8,
              );

              final result = model.toJson();

              expect(
                result['address']['address_line_1'],
                '742 Evergreen Terrace',
              );

              expect(
                result['address']['address_line_2'],
                'Springfield Address Line 2',
              );

              expect(
                result['address']['address_line_3'],
                'Springfield Address Line 3',
              );

              expect(
                result['address']['county'],
                'Springfield County',
              );

              expect(
                result['address']['delivery_point_identifier'],
                'DP123',
              );

              expect(
                result['address']['postcode'],
                'AB1 2CD',
              );

              expect(
                result['address']['town'],
                'Springfield Town',
              );

              expect(
                result['bespoke_pps_tariff_rates'].length,
                1,
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['payment_method'],
                'DD',
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['standing_charge'],
                '0.1',
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['unit_rate'],
                '0.2',
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['unit_rates'].length,
                1,
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['unit_rates'][0]
                    ['payment_method'],
                'DD',
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['unit_rates'][0]
                    ['rate_type'],
                'STANDARD',
              );

              expect(
                result['bespoke_pps_tariff_rates'][0]['unit_rates'][0]
                    ['unit_rate'],
                '0.3',
              );

              expect(
                result['bespoke_tariff_rates']['standing_charge'],
                '0.4',
              );

              expect(
                result['bespoke_tariff_rates']['unit_rate'],
                '0.5',
              );

              expect(
                result['bespoke_tariff_rates']['unit_rates'].length,
                1,
              );

              expect(
                result['bespoke_tariff_rates']['unit_rates'][0]
                    ['payment_method'],
                'DD',
              );

              expect(
                result['bespoke_tariff_rates']['unit_rates'][0]['rate_type'],
                'STANDARD',
              );

              expect(
                result['bespoke_tariff_rates']['unit_rates'][0]['unit_rate'],
                '0.6',
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
                result['preferred_ssd'],
                '2023-01-01T00:00:00.000',
              );

              expect(
                result['quote']['annual_payment'],
                1000,
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
                'T123',
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
              final model = _MeterPoint(
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
                result['preferred_ssd'],
                isNull,
              );

              expect(
                result['quote']['annual_payment'],
                1000,
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
