import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  const apiKey = 'sk_test_abc';

  group(
    'ApiKeyClient',
    () {
      group(
        'close',
        () {
          test('closes inner client', () {
            var closed = false;

            ApiKeyClient(
              apiKey: apiKey,
              inner: MockCloseClient(
                () {
                  closed = true;
                },
              ),
            ).close();

            expect(
              closed,
              isTrue,
            );
          });
        },
      );

      group(
        'send',
        () {
          test(
            'adds authorization header',
            () async {
              await ApiKeyClient(
                apiKey: apiKey,
                inner: MockClient(
                  (request) async {
                    expect(
                      request.headers['authorization'],
                      'Basic ${base64.encode(utf8.encode('$apiKey:'))}',
                    );

                    return http.Response('', 200);
                  },
                ),
              ).get(
                Uri.https(
                  'example.com',
                ),
              );
            },
          );

          test(
            'preserves the request body',
            () async {
              await ApiKeyClient(
                apiKey: apiKey,
                inner: MockClient(
                  (request) async {
                    expect(
                      request.body,
                      '{"hello":"world"}',
                    );

                    return http.Response('', 200);
                  },
                ),
              ).post(
                Uri.https(
                  'example.com',
                ),
                headers: {
                  'content-type': 'application/json',
                },
                body: '{"hello":"world"}',
              );
            },
          );

          test(
            'throws ArgumentError if authorization header is already present',
            () async {
              expect(
                () => ApiKeyClient(
                  apiKey: apiKey,
                  inner: MockClient(
                    (request) async {
                      return http.Response('', 200);
                    },
                  ),
                ).get(
                  Uri.https(
                    'example.com',
                  ),
                  headers: {
                    'authorization': 'hello world',
                  },
                ),
                throwsA(isA<ArgumentError>()),
              );
            },
          );
        },
      );
    },
  );

  group(
    'clientViaApiKey',
    () {
      test(
        'returns ApiKeyClient',
        () {
          expect(
            clientViaApiKey(apiKey),
            isA<ApiKeyClient>(),
          );
        },
      );
    },
  );
}

class MockCloseClient extends http.BaseClient {
  final void Function() onClose;

  MockCloseClient(this.onClose);

  @override
  void close() {
    onClose();

    super.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) async {
    return http.StreamedResponse(
      const Stream.empty(),
      200,
    );
  }
}
