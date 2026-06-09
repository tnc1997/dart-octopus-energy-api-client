import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'ElectricityMeterPointsService',
    () {
      group(
        'getElectricityMeterPoint',
        () {
          test(
            'requests the meter point path',
            () async {
              late Uri url;

              final service = ElectricityMeterPointsService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      json.encode(electricityMeterPoint),
                      200,
                    );
                  },
                ),
              );

              await service.getElectricityMeterPoint(
                '1200023625426',
              );

              expect(
                url.path,
                '/v1/electricity-meter-points/1200023625426/',
              );
            },
          );

          test(
            'returns an ElectricityMeterPoint on success',
            () async {
              final service = ElectricityMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode(electricityMeterPoint),
                    200,
                  ),
                ),
              );

              final result = await service.getElectricityMeterPoint(
                '1200023625426',
              );

              expect(
                result,
                isA<ElectricityMeterPoint>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ElectricityMeterPointsService(
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
                () => service.getElectricityMeterPoint('1200023625426'),
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
              final service = ElectricityMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.getElectricityMeterPoint('1200023625426'),
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
        'listElectricityMeterConsumption',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = ElectricityMeterPointsService(
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

              await service.listElectricityMeterConsumption(
                'MPAN',
                'SERIAL',
                groupBy: 'day',
                orderBy: 'period',
                page: 2,
                pageSize: 100,
                periodFrom: DateTime.parse('2017-05-05T05:37:27Z'),
                periodTo: DateTime.parse('2018-06-06T06:48:38Z'),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'group_by',
                  'day',
                ),
              );

              expect(
                url.queryParameters,
                containsPair(
                  'order_by',
                  'period',
                ),
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

              final service = ElectricityMeterPointsService(
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

              await service.listElectricityMeterConsumption(
                'MPAN',
                'SERIAL',
              );

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the consumption path',
            () async {
              late Uri url;

              final service = ElectricityMeterPointsService(
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

              await service.listElectricityMeterConsumption(
                'MPAN',
                'SERIAL',
              );

              expect(
                url.path,
                '/v1/electricity-meter-points/MPAN/meters/SERIAL/consumption/',
              );
            },
          );

          test(
            'returns a PaginatedConsumptionList on success',
            () async {
              final service = ElectricityMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listElectricityMeterConsumption(
                'MPAN',
                'SERIAL',
              );

              expect(
                result,
                isA<PaginatedConsumptionList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = ElectricityMeterPointsService(
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
                () => service.listElectricityMeterConsumption(
                  'MPAN',
                  'SERIAL',
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
              final service = ElectricityMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listElectricityMeterConsumption(
                  'MPAN',
                  'SERIAL',
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
    },
  );
}

final electricityMeterPoint = <String, dynamic>{
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

final emptyPaginatedList =
    '{"count": 0, "next": null, "previous": null, "results": []}';
