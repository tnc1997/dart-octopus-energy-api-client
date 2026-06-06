import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Product',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = <String, dynamic>{
                'available_from': '2017-05-05T05:37:27Z',
                'available_to': null,
                'brand': 'TENTACLE_ENERGY',
                'code': 'VAR-17-01-11',
                'description':
                    'This great value 12 month fixed tariff guarantees…',
                'display_name': 'Flexible Tentacle',
                'dual_register_electricity_tariffs': <String, dynamic>{},
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'is_business': false,
                'is_green': false,
                'is_prepay': false,
                'is_restricted': false,
                'is_tracker': false,
                'is_variable': true,
                'links': <dynamic>[
                  {
                    'href':
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                    'method': 'GET',
                    'rel': 'self',
                  }
                ],
                'sample_consumption': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{
                    'electricity_day': 2436,
                    'electricity_night': 1764,
                    'gas_standard': 12000,
                  },
                  'dual_fuel_single_rate': <String, dynamic>{
                    'electricity_standard': 3100,
                    'gas_standard': 12000,
                  },
                  'electricity_dual_rate': <String, dynamic>{
                    'electricity_day': 2436,
                    'electricity_night': 1764,
                  },
                  'electricity_single_rate': <String, dynamic>{
                    'electricity_standard': 3100,
                  },
                },
                'sample_quotes': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{},
                  'dual_fuel_single_rate': <String, dynamic>{},
                  'electricity_dual_rate': <String, dynamic>{},
                  'electricity_single_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 90000,
                    'annual_cost_exc_vat': 85000,
                  },
                },
                'single_register_electricity_tariffs': <String, dynamic>{
                  '_A': <String, dynamic>{
                    'direct_debit_monthly': <String, dynamic>{
                      'code': 'E-1R-VAR-17-01-11-A',
                      'standard_unit_rate_exc_vat': 10.85,
                      'standard_unit_rate_inc_vat': 10.85,
                      'standing_charge_exc_vat': 20.0,
                      'standing_charge_inc_vat': 20.0,
                      'online_discount_exc_vat': 0,
                      'online_discount_inc_vat': 0,
                      'dual_fuel_discount_exc_vat': 0,
                      'dual_fuel_discount_inc_vat': 0,
                      'exit_fees_exc_vat': 0,
                      'exit_fees_inc_vat': 0,
                      'exit_fees_type': 'NONE',
                      'links': <dynamic>[
                        {
                          'href':
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                          'method': 'GET',
                          'rel': 'standard_unit_rates',
                        },
                        {
                          'href':
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standing-charges/',
                          'method': 'GET',
                          'rel': 'standing_charges',
                        }
                      ],
                    }
                  }
                },
                'single_register_gas_tariffs': <String, dynamic>{},
                'tariffs_active_at': '2017-05-05T05:37:27Z',
                'term': 12,
              };

              final result = Product.fromJson(json);

              expect(
                result.availableFrom,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.availableTo,
                isNull,
              );

              expect(
                result.brand,
                'TENTACLE_ENERGY',
              );

              expect(
                result.code,
                'VAR-17-01-11',
              );

              expect(
                result.description,
                'This great value 12 month fixed tariff guarantees…',
              );

              expect(
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.dualRegisterElectricityTariffs,
                isEmpty,
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.isBusiness,
                false,
              );

              expect(
                result.isGreen,
                false,
              );

              expect(
                result.isPrepay,
                false,
              );

              expect(
                result.isRestricted,
                false,
              );

              expect(
                result.isTracker,
                false,
              );

              expect(
                result.isVariable,
                true,
              );

              expect(
                result.links,
                hasLength(1),
              );

              expect(
                result.sampleConsumption,
                isNotNull,
              );

              expect(
                result.sampleQuotes,
                isNotNull,
              );

              expect(
                result.singleRegisterElectricityTariffs,
                isNotEmpty,
              );

              expect(
                result.singleRegisterGasTariffs,
                isEmpty,
              );

              expect(
                result.tariffsActiveAt,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.term,
                12,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{
                'available_from': '2017-05-05T05:37:27Z',
                'brand': 'TENTACLE_ENERGY',
                'code': 'VAR-17-01-11',
                'description':
                    'This great value 12 month fixed tariff guarantees…',
                'display_name': 'Flexible Tentacle',
                'dual_register_electricity_tariffs': <String, dynamic>{},
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'is_restricted': false,
                'links': <dynamic>[],
                'sample_consumption': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{},
                  'dual_fuel_single_rate': <String, dynamic>{},
                  'electricity_dual_rate': <String, dynamic>{},
                  'electricity_single_rate': <String, dynamic>{},
                },
                'sample_quotes': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{},
                  'dual_fuel_single_rate': <String, dynamic>{},
                  'electricity_dual_rate': <String, dynamic>{},
                  'electricity_single_rate': <String, dynamic>{},
                },
                'single_register_electricity_tariffs': <String, dynamic>{},
                'single_register_gas_tariffs': <String, dynamic>{},
                'tariffs_active_at': '2017-05-05T05:37:27Z',
              };

              final result = Product.fromJson(json);

              expect(
                result.availableFrom,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.availableTo,
                isNull,
              );

              expect(
                result.brand,
                'TENTACLE_ENERGY',
              );

              expect(
                result.code,
                'VAR-17-01-11',
              );

              expect(
                result.description,
                'This great value 12 month fixed tariff guarantees…',
              );

              expect(
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.dualRegisterElectricityTariffs,
                isEmpty,
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.isBusiness,
                isNull,
              );

              expect(
                result.isGreen,
                isNull,
              );

              expect(
                result.isPrepay,
                isNull,
              );

              expect(
                result.isRestricted,
                false,
              );

              expect(
                result.isTracker,
                isNull,
              );

              expect(
                result.isVariable,
                isNull,
              );

              expect(
                result.links,
                isEmpty,
              );

              expect(
                result.sampleConsumption,
                isNotNull,
              );

              expect(
                result.sampleQuotes,
                isNotNull,
              );

              expect(
                result.singleRegisterElectricityTariffs,
                isEmpty,
              );

              expect(
                result.singleRegisterGasTariffs,
                isEmpty,
              );

              expect(
                result.tariffsActiveAt,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.term,
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
              final model = Product(
                availableFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                brand: 'TENTACLE_ENERGY',
                code: 'VAR-17-01-11',
                description:
                    'This great value 12 month fixed tariff guarantees…',
                displayName: 'Flexible Tentacle',
                dualRegisterElectricityTariffs: {},
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                isBusiness: false,
                isGreen: false,
                isPrepay: false,
                isRestricted: false,
                isTracker: false,
                isVariable: true,
                links: [
                  Link(
                    href:
                        'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                    method: 'GET',
                    rel: 'self',
                  ),
                ],
                sampleConsumption: SampleConsumption(
                  dualFuelDualRate: {
                    'electricity_day': 2436.0,
                    'electricity_night': 1764.0,
                    'gas_standard': 12000.0,
                  },
                  dualFuelSingleRate: {
                    'electricity_standard': 3100.0,
                    'gas_standard': 12000.0,
                  },
                  electricityDualRate: {
                    'electricity_day': 2436.0,
                    'electricity_night': 1764.0,
                  },
                  electricitySingleRate: {'electricity_standard': 3100.0},
                ),
                sampleQuotes: SampleQuotes(
                  dualFuelDualRate: {},
                  dualFuelSingleRate: {},
                  electricityDualRate: {},
                  electricitySingleRate: {
                    'annual_cost_inc_vat': 90000.0,
                    'annual_cost_exc_vat': 85000.0,
                  },
                ),
                singleRegisterElectricityTariffs: {
                  '_A': {
                    'direct_debit_monthly': StandardElectricityTariff(
                      code: 'E-1R-VAR-17-01-11-A',
                      dualFuelDiscountExcVat: 0,
                      dualFuelDiscountIncVat: 0,
                      exitFeesExcVat: 0,
                      exitFeesIncVat: 0,
                      exitFeesType: 'NONE',
                      links: [
                        Link(
                          href:
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standard-unit-rates/',
                          method: 'GET',
                          rel: 'standard_unit_rates',
                        ),
                        Link(
                          href:
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-1R-VAR-17-01-11-A/standing-charges/',
                          method: 'GET',
                          rel: 'standing_charges',
                        ),
                      ],
                      onlineDiscountExcVat: 0,
                      onlineDiscountIncVat: 0,
                      standingChargeExcVat: 20.0,
                      standingChargeIncVat: 20.0,
                      standardUnitRateExcVat: 10.85,
                      standardUnitRateIncVat: 10.85,
                    )
                  }
                },
                singleRegisterGasTariffs: {},
                tariffsActiveAt: DateTime.parse('2017-05-05T05:37:27Z'),
                term: 12,
              );

              final result = model.toJson();

              expect(
                result['available_from'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['available_to'],
                isNull,
              );

              expect(
                result['brand'],
                'TENTACLE_ENERGY',
              );

              expect(
                result['code'],
                'VAR-17-01-11',
              );

              expect(
                result['description'],
                'This great value 12 month fixed tariff guarantees…',
              );

              expect(
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['dual_register_electricity_tariffs'],
                isEmpty,
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['is_business'],
                false,
              );

              expect(
                result['is_green'],
                false,
              );

              expect(
                result['is_prepay'],
                false,
              );

              expect(
                result['is_restricted'],
                false,
              );

              expect(
                result['is_tracker'],
                false,
              );

              expect(
                result['is_variable'],
                true,
              );

              expect(
                result['links'],
                hasLength(1),
              );

              expect(
                result['sample_consumption'],
                isNotNull,
              );

              expect(
                result['sample_quotes'],
                isNotNull,
              );

              expect(
                result['single_register_electricity_tariffs'],
                isNotEmpty,
              );

              expect(
                result['single_register_gas_tariffs'],
                isEmpty,
              );

              expect(
                result['tariffs_active_at'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['term'],
                12,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Product(
                availableFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                brand: 'TENTACLE_ENERGY',
                code: 'VAR-17-01-11',
                description:
                    'This great value 12 month fixed tariff guarantees…',
                displayName: 'Flexible Tentacle',
                dualRegisterElectricityTariffs: {},
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                isRestricted: false,
                links: [],
                sampleConsumption: SampleConsumption(
                  dualFuelDualRate: {},
                  dualFuelSingleRate: {},
                  electricityDualRate: {},
                  electricitySingleRate: {},
                ),
                sampleQuotes: SampleQuotes(
                  dualFuelDualRate: {},
                  dualFuelSingleRate: {},
                  electricityDualRate: {},
                  electricitySingleRate: {},
                ),
                singleRegisterElectricityTariffs: {},
                singleRegisterGasTariffs: {},
                tariffsActiveAt: DateTime.parse('2017-05-05T05:37:27Z'),
              );

              final result = model.toJson();

              expect(
                result['available_from'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['available_to'],
                isNull,
              );

              expect(
                result['brand'],
                'TENTACLE_ENERGY',
              );

              expect(
                result['code'],
                'VAR-17-01-11',
              );

              expect(
                result['description'],
                'This great value 12 month fixed tariff guarantees…',
              );

              expect(
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['dual_register_electricity_tariffs'],
                isEmpty,
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['is_business'],
                isNull,
              );

              expect(
                result['is_green'],
                isNull,
              );

              expect(
                result['is_prepay'],
                isNull,
              );

              expect(
                result['is_restricted'],
                false,
              );

              expect(
                result['is_tracker'],
                isNull,
              );

              expect(
                result['is_variable'],
                isNull,
              );

              expect(
                result['links'],
                isEmpty,
              );

              expect(
                result['sample_consumption'],
                isNotNull,
              );

              expect(
                result['sample_quotes'],
                isNotNull,
              );

              expect(
                result['single_register_electricity_tariffs'],
                isEmpty,
              );

              expect(
                result['single_register_gas_tariffs'],
                isEmpty,
              );

              expect(
                result['tariffs_active_at'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['term'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
