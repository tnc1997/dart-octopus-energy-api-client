import 'package:octopus_energy_api_client/v1.dart';
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
                'available_to': '2018-06-06T06:48:38Z',
                'brand': 'TENTACLE_ENERGY',
                'code': 'VAR-17-01-11',
                'description':
                    'This great value 12 month fixed tariff guarantees value.',
                'display_name': 'Flexible Tentacle',
                'dual_register_electricity_tariffs': <String, dynamic>{
                  '_B': <String, dynamic>{
                    'direct_debit_monthly': <String, dynamic>{
                      'code': 'E-2R-VAR-17-01-11-B',
                      'day_unit_rate_exc_vat': 18.0,
                      'day_unit_rate_inc_vat': 18.1,
                      'night_unit_rate_exc_vat': 9.0,
                      'night_unit_rate_inc_vat': 9.1,
                      'standing_charge_exc_vat': 21.0,
                      'standing_charge_inc_vat': 21.1,
                      'online_discount_exc_vat': 4.0,
                      'online_discount_inc_vat': 4.1,
                      'dual_fuel_discount_exc_vat': 5.0,
                      'dual_fuel_discount_inc_vat': 5.1,
                      'exit_fees_exc_vat': 6.0,
                      'exit_fees_inc_vat': 6.1,
                      'exit_fees_type': 'EXIT_FEES',
                      'links': <dynamic>[
                        {
                          'href':
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                          'method': 'GET',
                          'rel': 'standard_unit_rates',
                        }
                      ],
                    }
                  }
                },
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'is_business': true,
                'is_green': false,
                'is_prepay': true,
                'is_restricted': false,
                'is_tracker': true,
                'is_variable': false,
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
                    'gas_standard': 13000,
                  },
                  'electricity_dual_rate': <String, dynamic>{
                    'electricity_day': 2536,
                    'electricity_night': 1864,
                  },
                  'electricity_single_rate': <String, dynamic>{
                    'electricity_standard': 3200,
                  },
                },
                'sample_quotes': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 60000,
                    'annual_cost_exc_vat': 55000,
                  },
                  'dual_fuel_single_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 70000,
                    'annual_cost_exc_vat': 65000,
                  },
                  'electricity_dual_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 80000,
                    'annual_cost_exc_vat': 75000,
                  },
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
                      'standard_unit_rate_inc_vat': 11.39,
                      'standing_charge_exc_vat': 20.0,
                      'standing_charge_inc_vat': 21.0,
                      'online_discount_exc_vat': 1.0,
                      'online_discount_inc_vat': 1.1,
                      'dual_fuel_discount_exc_vat': 2.0,
                      'dual_fuel_discount_inc_vat': 2.1,
                      'exit_fees_exc_vat': 3.0,
                      'exit_fees_inc_vat': 3.1,
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
                'single_register_gas_tariffs': <String, dynamic>{
                  '_C': <String, dynamic>{
                    'direct_debit_monthly': <String, dynamic>{
                      'code': 'G-1R-VAR-17-01-11-C',
                      'standard_unit_rate_exc_vat': 3.0,
                      'standard_unit_rate_inc_vat': 3.1,
                      'standing_charge_exc_vat': 22.0,
                      'standing_charge_inc_vat': 22.1,
                      'online_discount_exc_vat': 7.0,
                      'online_discount_inc_vat': 7.1,
                      'dual_fuel_discount_exc_vat': 8.0,
                      'dual_fuel_discount_inc_vat': 8.1,
                      'exit_fees_exc_vat': 9.0,
                      'exit_fees_inc_vat': 9.1,
                      'exit_fees_type': 'NONE',
                      'links': <dynamic>[
                        {
                          'href':
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                          'method': 'GET',
                          'rel': 'standard_unit_rates',
                        }
                      ],
                    }
                  }
                },
                'tariffs_active_at': '2018-06-06T06:48:38Z',
                'term': 12,
              };

              final result = Product.fromJson(json);

              expect(
                result.availableFrom,
                DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                result.availableTo,
                DateTime.parse('2018-06-06T06:48:38Z'),
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
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result.displayName,
                'Flexible Tentacle',
              );

              expect(
                result.dualRegisterElectricityTariffs['_B']![
                    'direct_debit_monthly'],
                isA<Eco7ElectricityTariff>(),
              );

              expect(
                result.fullName,
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result.isBusiness,
                isTrue,
              );

              expect(
                result.isGreen,
                isFalse,
              );

              expect(
                result.isPrepay,
                isTrue,
              );

              expect(
                result.isRestricted,
                isFalse,
              );

              expect(
                result.isTracker,
                isTrue,
              );

              expect(
                result.isVariable,
                isFalse,
              );

              expect(
                result.links,
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.sampleConsumption,
                isA<SampleConsumption>(),
              );

              expect(
                result.sampleQuotes,
                isA<SampleQuotes>(),
              );

              expect(
                result.singleRegisterElectricityTariffs['_A']![
                    'direct_debit_monthly'],
                isA<StandardElectricityTariff>(),
              );

              expect(
                result.singleRegisterGasTariffs['_C']!['direct_debit_monthly'],
                isA<GasTariff>(),
              );

              expect(
                result.tariffsActiveAt,
                DateTime.parse('2018-06-06T06:48:38Z'),
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
                    'This great value 12 month fixed tariff guarantees value.',
                'display_name': 'Flexible Tentacle',
                'dual_register_electricity_tariffs': <String, dynamic>{},
                'full_name': 'Flexible Tentacle Offer January 2017 v1',
                'is_restricted': false,
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
                    'gas_standard': 13000,
                  },
                  'electricity_dual_rate': <String, dynamic>{
                    'electricity_day': 2536,
                    'electricity_night': 1864,
                  },
                  'electricity_single_rate': <String, dynamic>{
                    'electricity_standard': 3200,
                  },
                },
                'sample_quotes': <String, dynamic>{
                  'dual_fuel_dual_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 60000,
                    'annual_cost_exc_vat': 55000,
                  },
                  'dual_fuel_single_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 70000,
                    'annual_cost_exc_vat': 65000,
                  },
                  'electricity_dual_rate': <String, dynamic>{
                    'annual_cost_inc_vat': 80000,
                    'annual_cost_exc_vat': 75000,
                  },
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
                      'standard_unit_rate_inc_vat': 11.39,
                      'standing_charge_exc_vat': 20.0,
                      'standing_charge_inc_vat': 21.0,
                      'online_discount_exc_vat': 1.0,
                      'online_discount_inc_vat': 1.1,
                      'dual_fuel_discount_exc_vat': 2.0,
                      'dual_fuel_discount_inc_vat': 2.1,
                      'exit_fees_exc_vat': 3.0,
                      'exit_fees_inc_vat': 3.1,
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
                    },
                    'direct_debit_quarterly': <String, dynamic>{},
                  }
                },
                'single_register_gas_tariffs': <String, dynamic>{},
                'tariffs_active_at': '2018-06-06T06:48:38Z',
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
                'This great value 12 month fixed tariff guarantees value.',
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
                isFalse,
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
                isA<List<Link>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
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
                result
                    .singleRegisterElectricityTariffs['_A']![
                        'direct_debit_quarterly']!
                    .code,
                isNull,
              );

              expect(
                result.singleRegisterGasTariffs,
                isEmpty,
              );

              expect(
                result.tariffsActiveAt,
                DateTime.parse('2018-06-06T06:48:38Z'),
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
                availableTo: DateTime.parse('2018-06-06T06:48:38Z'),
                brand: 'TENTACLE_ENERGY',
                code: 'VAR-17-01-11',
                description:
                    'This great value 12 month fixed tariff guarantees value.',
                displayName: 'Flexible Tentacle',
                dualRegisterElectricityTariffs: {
                  '_B': {
                    'direct_debit_monthly': Eco7ElectricityTariff(
                      code: 'E-2R-VAR-17-01-11-B',
                      dayUnitRateExcVat: 18.0,
                      dayUnitRateIncVat: 18.1,
                      nightUnitRateExcVat: 9.0,
                      nightUnitRateIncVat: 9.1,
                      dualFuelDiscountExcVat: 5.0,
                      dualFuelDiscountIncVat: 5.1,
                      exitFeesExcVat: 6.0,
                      exitFeesIncVat: 6.1,
                      exitFeesType: 'EXIT_FEES',
                      links: [
                        Link(
                          href:
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/electricity-tariffs/E-2R-VAR-17-01-11-B/standard-unit-rates/',
                          method: 'GET',
                          rel: 'standard_unit_rates',
                        ),
                      ],
                      onlineDiscountExcVat: 4.0,
                      onlineDiscountIncVat: 4.1,
                      standingChargeExcVat: 21.0,
                      standingChargeIncVat: 21.1,
                    )
                  }
                },
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                isBusiness: true,
                isGreen: false,
                isPrepay: true,
                isRestricted: false,
                isTracker: true,
                isVariable: false,
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
                    'gas_standard': 13000.0,
                  },
                  electricityDualRate: {
                    'electricity_day': 2536.0,
                    'electricity_night': 1864.0,
                  },
                  electricitySingleRate: {'electricity_standard': 3200.0},
                ),
                sampleQuotes: SampleQuotes(
                  dualFuelDualRate: {
                    'annual_cost_inc_vat': 60000.0,
                    'annual_cost_exc_vat': 55000.0,
                  },
                  dualFuelSingleRate: {
                    'annual_cost_inc_vat': 70000.0,
                    'annual_cost_exc_vat': 65000.0,
                  },
                  electricityDualRate: {
                    'annual_cost_inc_vat': 80000.0,
                    'annual_cost_exc_vat': 75000.0,
                  },
                  electricitySingleRate: {
                    'annual_cost_inc_vat': 90000.0,
                    'annual_cost_exc_vat': 85000.0,
                  },
                ),
                singleRegisterElectricityTariffs: {
                  '_A': {
                    'direct_debit_monthly': StandardElectricityTariff(
                      code: 'E-1R-VAR-17-01-11-A',
                      dualFuelDiscountExcVat: 2.0,
                      dualFuelDiscountIncVat: 2.1,
                      exitFeesExcVat: 3.0,
                      exitFeesIncVat: 3.1,
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
                      onlineDiscountExcVat: 1.0,
                      onlineDiscountIncVat: 1.1,
                      standingChargeExcVat: 20.0,
                      standingChargeIncVat: 21.0,
                      standardUnitRateExcVat: 10.85,
                      standardUnitRateIncVat: 11.39,
                    )
                  }
                },
                singleRegisterGasTariffs: {
                  '_C': {
                    'direct_debit_monthly': GasTariff(
                      code: 'G-1R-VAR-17-01-11-C',
                      dualFuelDiscountExcVat: 8.0,
                      dualFuelDiscountIncVat: 8.1,
                      exitFeesExcVat: 9.0,
                      exitFeesIncVat: 9.1,
                      exitFeesType: 'NONE',
                      links: [
                        Link(
                          href:
                              'https://api.octopus.energy/v1/products/VAR-17-01-11/gas-tariffs/G-1R-VAR-17-01-11-C/standard-unit-rates/',
                          method: 'GET',
                          rel: 'standard_unit_rates',
                        ),
                      ],
                      onlineDiscountExcVat: 7.0,
                      onlineDiscountIncVat: 7.1,
                      standingChargeExcVat: 22.0,
                      standingChargeIncVat: 22.1,
                      standardUnitRateExcVat: 3.0,
                      standardUnitRateIncVat: 3.1,
                    )
                  }
                },
                tariffsActiveAt: DateTime.parse('2018-06-06T06:48:38Z'),
                term: 12,
              );

              final result = model.toJson();

              expect(
                result['available_from'],
                '2017-05-05T05:37:27.000Z',
              );

              expect(
                result['available_to'],
                '2018-06-06T06:48:38.000Z',
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
                'This great value 12 month fixed tariff guarantees value.',
              );

              expect(
                result['display_name'],
                'Flexible Tentacle',
              );

              expect(
                result['dual_register_electricity_tariffs'],
                isNotEmpty,
              );

              expect(
                (result['dual_register_electricity_tariffs'] as Map)['_B']
                    ['direct_debit_monthly'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['full_name'],
                'Flexible Tentacle Offer January 2017 v1',
              );

              expect(
                result['is_business'],
                isTrue,
              );

              expect(
                result['is_green'],
                isFalse,
              );

              expect(
                result['is_prepay'],
                isTrue,
              );

              expect(
                result['is_restricted'],
                isFalse,
              );

              expect(
                result['is_tracker'],
                isTrue,
              );

              expect(
                result['is_variable'],
                isFalse,
              );

              expect(
                result['links'],
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
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
                (result['single_register_electricity_tariffs'] as Map)['_A']
                    ['direct_debit_monthly'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['single_register_gas_tariffs'],
                isNotEmpty,
              );

              expect(
                (result['single_register_gas_tariffs'] as Map)['_C']
                    ['direct_debit_monthly'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['tariffs_active_at'],
                '2018-06-06T06:48:38.000Z',
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
                    'This great value 12 month fixed tariff guarantees value.',
                displayName: 'Flexible Tentacle',
                dualRegisterElectricityTariffs: {},
                fullName: 'Flexible Tentacle Offer January 2017 v1',
                isRestricted: false,
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
                    'gas_standard': 13000.0,
                  },
                  electricityDualRate: {
                    'electricity_day': 2536.0,
                    'electricity_night': 1864.0,
                  },
                  electricitySingleRate: {'electricity_standard': 3200.0},
                ),
                sampleQuotes: SampleQuotes(
                  dualFuelDualRate: {
                    'annual_cost_inc_vat': 60000.0,
                    'annual_cost_exc_vat': 55000.0,
                  },
                  dualFuelSingleRate: {
                    'annual_cost_inc_vat': 70000.0,
                    'annual_cost_exc_vat': 65000.0,
                  },
                  electricityDualRate: {
                    'annual_cost_inc_vat': 80000.0,
                    'annual_cost_exc_vat': 75000.0,
                  },
                  electricitySingleRate: {
                    'annual_cost_inc_vat': 90000.0,
                    'annual_cost_exc_vat': 85000.0,
                  },
                ),
                singleRegisterElectricityTariffs: {
                  '_A': {
                    'direct_debit_monthly': StandardElectricityTariff(
                      code: 'E-1R-VAR-17-01-11-A',
                      dualFuelDiscountExcVat: 2.0,
                      dualFuelDiscountIncVat: 2.1,
                      exitFeesExcVat: 3.0,
                      exitFeesIncVat: 3.1,
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
                      onlineDiscountExcVat: 1.0,
                      onlineDiscountIncVat: 1.1,
                      standingChargeExcVat: 20.0,
                      standingChargeIncVat: 21.0,
                      standardUnitRateExcVat: 10.85,
                      standardUnitRateIncVat: 11.39,
                    )
                  }
                },
                singleRegisterGasTariffs: {},
                tariffsActiveAt: DateTime.parse('2018-06-06T06:48:38Z'),
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
                'This great value 12 month fixed tariff guarantees value.',
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
                isFalse,
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
                isA<List<Map<String, dynamic>>>().having(
                  (links) => links.length,
                  'length',
                  1,
                ),
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
                '2018-06-06T06:48:38.000Z',
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
