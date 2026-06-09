import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'GasMeterPointsService',
    () {
      group(
        'listGasMeterConsumption',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = GasMeterPointsService(
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

              await service.listGasMeterConsumption(
                'MPRN',
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

              final service = GasMeterPointsService(
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

              await service.listGasMeterConsumption(
                'MPRN',
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

              final service = GasMeterPointsService(
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

              await service.listGasMeterConsumption(
                'MPRN',
                'SERIAL',
              );

              expect(
                url.path,
                '/v1/gas-meter-points/MPRN/meters/SERIAL/consumption/',
              );
            },
          );

          test(
            'returns a PaginatedConsumptionList on success',
            () async {
              final service = GasMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listGasMeterConsumption(
                'MPRN',
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
              final service = GasMeterPointsService(
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
                () => service.listGasMeterConsumption(
                  'MPRN',
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
              final service = GasMeterPointsService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listGasMeterConsumption(
                  'MPRN',
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

final emptyPaginatedList =
    '{"count": 0, "next": null, "previous": null, "results": []}';
