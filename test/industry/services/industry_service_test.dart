import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'IndustryService',
    () {
      group(
        'listIndustryGridSupplyPoints',
        () {
          test(
            'includes query parameters when supplied',
            () async {
              late Uri url;

              final service = IndustryService(
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

              await service.listIndustryGridSupplyPoints(
                page: 2,
                postcode: 'AB12CD',
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
                  'postcode',
                  'AB12CD',
                ),
              );
            },
          );

          test(
            'omits query parameters when not supplied',
            () async {
              late Uri url;

              final service = IndustryService(
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

              await service.listIndustryGridSupplyPoints();

              expect(
                url.queryParameters,
                isEmpty,
              );
            },
          );

          test(
            'requests the grid supply points path',
            () async {
              late Uri url;

              final service = IndustryService(
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

              await service.listIndustryGridSupplyPoints();

              expect(
                url.path,
                '/v1/industry/grid-supply-points/',
              );
            },
          );

          test(
            'returns a PaginatedGridSupplyPointList on success',
            () async {
              final service = IndustryService(
                client: MockClient(
                  (request) async => http.Response(
                    emptyPaginatedList,
                    200,
                  ),
                ),
              );

              final result = await service.listIndustryGridSupplyPoints();

              expect(
                result,
                isA<PaginatedGridSupplyPointList>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = IndustryService(
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
                () => service.listIndustryGridSupplyPoints(),
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
              final service = IndustryService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.listIndustryGridSupplyPoints(),
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
