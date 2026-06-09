import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'IvrSupportService',
    () {
      group(
        'minimalTwilioEnqueue',
        () {
          test(
            'completes on success',
            () async {
              final service = IvrSupportService(
                client: MockClient(
                  (request) async => http.Response(
                    '',
                    200,
                  ),
                ),
              );

              await expectLater(
                service.minimalTwilioEnqueue(),
                completes,
              );
            },
          );

          test(
            'requests the minimal enqueue path',
            () async {
              late Uri url;

              final service = IvrSupportService(
                client: MockClient(
                  (request) async {
                    url = request.url;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.minimalTwilioEnqueue();

              expect(
                url.path,
                '/v1/ivr-support/minimal-enqueue-for-incidents/',
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late String method;

              final service = IvrSupportService(
                client: MockClient(
                  (request) async {
                    method = request.method;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.minimalTwilioEnqueue();

              expect(
                method,
                'POST',
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = IvrSupportService(
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
                () => service.minimalTwilioEnqueue(),
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
              final service = IvrSupportService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.minimalTwilioEnqueue(),
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
