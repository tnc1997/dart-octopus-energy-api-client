import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'VoiceService',
    () {
      group(
        'twilioEnqueueAudio',
        () {
          test(
            'completes on success',
            () async {
              final service = VoiceService(
                client: MockClient(
                  (request) async => http.Response(
                    '',
                    200,
                  ),
                ),
              );

              await expectLater(
                service.twilioEnqueueAudio(),
                completes,
              );
            },
          );

          test(
            'requests the enqueue audio path',
            () async {
              late Uri url;

              final service = VoiceService(
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

              await service.twilioEnqueueAudio();

              expect(
                url.path,
                '/v1/voice/twilio/enqueue-audio/',
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late String method;

              final service = VoiceService(
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

              await service.twilioEnqueueAudio();

              expect(
                method,
                'POST',
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = VoiceService(
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
                () => service.twilioEnqueueAudio(),
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
              final service = VoiceService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.twilioEnqueueAudio(),
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
