import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ElectricityMeterPoint',
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
                'consumption_day': 1000,
                'consumption_night': 500,
                'consumption_off_peak': 200,
                'consumption_standard': 3100,
                'current_supplier_name': 'SUP',
                'current_supplier_tariff': 'SUP-123',
                'export_details': {
                  'import_mpan': '1234567890123',
                  'installations': [
                    {
                      'capacity_in_kw': '4.0',
                      'estimated_annual_generation_in_kwh': '3500.0',
                      'fit_id': 'FIT123',
                      'rego_id': 'REGO456',
                      'technology_type': 'Solar',
                    }
                  ],
                  'site_contact_email': 'chris@example.com',
                  'site_contact_name': 'Chris Johnson',
                  'site_contact_phone': '0123456789',
                },
                'fixed_tpi_fee': 100,
                'gsp': '_H',
                'has_smart_meter': false,
                'is_half_hourly': true,
                'meter_type': 'CREDIT',
                'mpan': '2000024512368',
                'preferred_ssd': '1970-01-01T00:00:00.000Z',
                'profile_class': 1,
                'quote': {
                  'annual_payment': 46576,
                },
                'quoted_product_id': 123,
                'standing_charge_uplift': '0.7',
                'tariff_code': 'E-1R-VAR-17-01-11-A',
                'unit_rate_uplift': '0.8',
              };

              final result = ElectricityMeterPoint.fromJson(json);

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
                result.consumptionDay,
                1000,
              );

              expect(
                result.consumptionNight,
                500,
              );

              expect(
                result.consumptionOffPeak,
                200,
              );

              expect(
                result.consumptionStandard,
                3100,
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
                result.exportDetails,
                isA<ExportDetails>(),
              );

              expect(
                result.fixedTpiFee,
                100,
              );

              expect(
                result.gsp,
                '_H',
              );

              expect(
                result.hasSmartMeter,
                isFalse,
              );

              expect(
                result.isHalfHourly,
                isTrue,
              );

              expect(
                result.meterType,
                MeterType.credit,
              );

              expect(
                result.mpan,
                '2000024512368',
              );

              expect(
                result.preferredSsd,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.profileClass,
                1,
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
                'E-1R-VAR-17-01-11-A',
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
                  'annual_payment': 46576,
                },
              };

              final result = ElectricityMeterPoint.fromJson(json);

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
                result.consumptionDay,
                isNull,
              );

              expect(
                result.consumptionNight,
                isNull,
              );

              expect(
                result.consumptionOffPeak,
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
                result.exportDetails,
                isNull,
              );

              expect(
                result.fixedTpiFee,
                isNull,
              );

              expect(
                result.gsp,
                isNull,
              );

              expect(
                result.hasSmartMeter,
                isNull,
              );

              expect(
                result.isHalfHourly,
                isNull,
              );

              expect(
                result.meterType,
                isNull,
              );

              expect(
                result.mpan,
                isNull,
              );

              expect(
                result.preferredSsd,
                isNull,
              );

              expect(
                result.profileClass,
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
              final model = ElectricityMeterPoint(
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
                consumptionDay: 1000,
                consumptionNight: 500,
                consumptionOffPeak: 200,
                consumptionStandard: 3100,
                currentSupplierName: 'SUP',
                currentSupplierTariff: 'SUP-123',
                exportDetails: ExportDetails(
                  importMpan: '1234567890123',
                  installations: [
                    Installation(
                      capacityInKw: 4.0,
                      estimatedAnnualGenerationInKwh: 3500.0,
                      fitId: 'FIT123',
                      regoId: 'REGO456',
                      technologyType: InstallationTechnologyType.solar,
                    )
                  ],
                  siteContactEmail: 'chris@example.com',
                  siteContactName: 'Chris Johnson',
                  siteContactPhone: '0123456789',
                ),
                fixedTpiFee: 100,
                gsp: '_H',
                hasSmartMeter: false,
                isHalfHourly: true,
                meterType: MeterType.credit,
                mpan: '2000024512368',
                preferredSsd: DateTime.parse('1970-01-01T00:00:00.000Z'),
                profileClass: 1,
                quote: Quote(
                  annualPayment: 46576,
                ),
                quotedProductId: 123,
                standingChargeUplift: 0.7,
                tariffCode: 'E-1R-VAR-17-01-11-A',
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
                result['consumption_day'],
                1000,
              );

              expect(
                result['consumption_night'],
                500,
              );

              expect(
                result['consumption_off_peak'],
                200,
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
                result['export_details'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['fixed_tpi_fee'],
                100,
              );

              expect(
                result['gsp'],
                '_H',
              );

              expect(
                result['has_smart_meter'],
                isFalse,
              );

              expect(
                result['is_half_hourly'],
                isTrue,
              );

              expect(
                result['meter_type'],
                'CREDIT',
              );

              expect(
                result['mpan'],
                '2000024512368',
              );

              expect(
                result['preferred_ssd'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['profile_class'],
                1,
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
                '0.8',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = ElectricityMeterPoint(
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
                result['consumption_day'],
                isNull,
              );

              expect(
                result['consumption_night'],
                isNull,
              );

              expect(
                result['consumption_off_peak'],
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
                result['export_details'],
                isNull,
              );

              expect(
                result['fixed_tpi_fee'],
                isNull,
              );

              expect(
                result['gsp'],
                isNull,
              );

              expect(
                result['has_smart_meter'],
                isNull,
              );

              expect(
                result['is_half_hourly'],
                isNull,
              );

              expect(
                result['meter_type'],
                isNull,
              );

              expect(
                result['mpan'],
                isNull,
              );

              expect(
                result['preferred_ssd'],
                isNull,
              );

              expect(
                result['profile_class'],
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
