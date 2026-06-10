import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ProductsService',
    () {
      group(
        'listElectricityTariffDayUnitRates',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffDayUnitRates(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffDayUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the day unit rates path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffDayUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/electricity-tariffs/TARIFF/day-unit-rates/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listElectricityTariffDayUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffDayUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffDayUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listElectricityTariffEvDeviceOffPeakUnitRates',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffEvDeviceOffPeakUnitRates(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffEvDeviceOffPeakUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the ev device off peak unit rates path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffEvDeviceOffPeakUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/electricity-tariffs/TARIFF/ev-device-off-peak-unit-rates/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result =
                  await service.listElectricityTariffEvDeviceOffPeakUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffEvDeviceOffPeakUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffEvDeviceOffPeakUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listElectricityTariffNightUnitRates',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffNightUnitRates(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffNightUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the night unit rates path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffNightUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/electricity-tariffs/TARIFF/night-unit-rates/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listElectricityTariffNightUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffNightUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffNightUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listElectricityTariffStandardUnitRates',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandardUnitRates(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the standard unit rates path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/electricity-tariffs/TARIFF/standard-unit-rates/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result =
                  await service.listElectricityTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffStandardUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffStandardUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listElectricityTariffStandingCharges',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandingCharges(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the standing charges path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listElectricityTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/electricity-tariffs/TARIFF/standing-charges/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listElectricityTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffStandingCharges(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityTariffStandingCharges(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listGasTariffStandardUnitRates',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandardUnitRates(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the standard unit rates path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/gas-tariffs/TARIFF/standard-unit-rates/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listGasTariffStandardUnitRates(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listGasTariffStandardUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listGasTariffStandardUnitRates(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listGasTariffStandingCharges',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandingCharges(
                'PROD',
                'TARIFF',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page_size',
                  '100',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_from',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'period_to',
                  '2018-06-06T06:48:38.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the standing charges path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listGasTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                url.path,
                '/v1/products/PROD/gas-tariffs/TARIFF/standing-charges/',
              );
            },
          );

          test(
            'returns a PaginatedHistoricalChargeList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listGasTariffStandingCharges(
                'PROD',
                'TARIFF',
              );

              expect(
                result,
                isA<PaginatedHistoricalChargeList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listGasTariffStandingCharges(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listGasTariffStandingCharges(
                  'PROD',
                  'TARIFF',
                ),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'listProducts',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listProducts(
                availableAt: DateTime.parse('2017-05-05T05:37:27Z'),
                brand: 'TENTACLE_ENERGY',
                isBusiness: true,
                isGreen: false,
                isHistorical: true,
                isPrepay: false,
                isTracker: true,
                isVariable: false,
                page: 2,
              );

              expect(
                url.queryParameters,
                containsPair(
                  'available_at',
                  '2017-05-05T05:37:27.000Z',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'brand',
                  'TENTACLE_ENERGY',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_business',
                  'true',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_green',
                  'false',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_historical',
                  'true',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_prepay',
                  'false',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_tracker',
                  'true',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'is_variable',
                  'false',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'page',
                  '2',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listProducts();

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the products path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      emptyPaginatedList,
                      200,
                    );
                  },
                ),
              );

              await service.listProducts();

              expect(
                url.host,
                'api.octopus.energy',
              );

              expect(
                url.path,
                '/v1/products/',
              );
            },
          );

          test(
            'returns a PaginatedProductsList on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listProducts();

              expect(
                result,
                isA<PaginatedProductsList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.listProducts(),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listProducts(),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );

      group(
        'retrieveProduct',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      json.encode(product),
                      200,
                    );
                  },
                ),
              );

              await service.retrieveProduct(
                'VAR-17-01-11',
                tariffsActiveAt: DateTime.parse('2017-05-05T05:37:27Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'tariffs_active_at',
                  '2017-05-05T05:37:27.000Z',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(json.encode(product), 200);
                  },
                ),
              );

              await service.retrieveProduct(
                'VAR-17-01-11',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the product path',
            () async {
              late Uri url;

              final service = ProductsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      json.encode(product),
                      200,
                    );
                  },
                ),
              );

              await service.retrieveProduct(
                'VAR-17-01-11',
              );

              expect(
                url.path,
                '/v1/products/VAR-17-01-11/',
              );
            },
          );

          test(
            'returns a Product on success',
            () async {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode(product),
                    200,
                  ),
                ),
              );

              final result = await service.retrieveProduct(
                'VAR-17-01-11',
              );

              expect(
                result,
                isA<Product>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode({
                      'detail': 'Not Found',
                    }),
                    404,
                    headers: {
                      'content-type': 'application/json',
                    },
                  ),
                ),
              );

              expect(
                () => service.retrieveProduct('VAR-17-01-11'),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    'Not Found',
                  ),
                ),
              );
            },
          );

          test(
            'throws without a message on a non-json error response',
            () {
              final service = ProductsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.retrieveProduct('VAR-17-01-11'),
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) => exception.message,
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );
        },
      );
    },
  );
}

final emptyPaginatedList =
    '{"count": 0, "next": null, "previous": null, "results": []}';

final product = <String, dynamic>{
  'available_from': '2017-05-05T05:37:27Z',
  'brand': 'TENTACLE_ENERGY',
  'code': 'VAR-17-01-11',
  'description': 'This great value 12 month fixed tariff guarantees value.',
  'display_name': 'Flexible Tentacle',
  'dual_register_electricity_tariffs': <String, dynamic>{},
  'full_name': 'Flexible Tentacle Offer January 2017 v1',
  'is_restricted': false,
  'links': <dynamic>[
    {
      'href': 'https://api.octopus.energy/v1/products/VAR-17-01-11/',
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
  'single_register_electricity_tariffs': <String, dynamic>{},
  'single_register_gas_tariffs': <String, dynamic>{},
  'tariffs_active_at': '2018-06-06T06:48:38Z',
};
