import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'OctopusEnergyApiClientException',
    () {
      group(
        'constructor',
        () {
          test(
            'can be instantiated with message',
            () {
              const message = 'Something went wrong';

              expect(
                OctopusEnergyApiClientException(
                  message: message,
                ).message,
                message,
              );
            },
          );

          test(
            'can be instantiated without message',
            () {
              expect(
                OctopusEnergyApiClientException().message,
                isNull,
              );
            },
          );
        },
      );

      group(
        'toString',
        () {
          test(
            'returns string with message',
            () {
              const message = 'Something went wrong';

              expect(
                OctopusEnergyApiClientException(
                  message: message,
                ).toString(),
                'OctopusEnergyApiClientException: $message',
              );
            },
          );

          test(
            'returns string without message',
            () {
              expect(
                OctopusEnergyApiClientException().toString(),
                'OctopusEnergyApiClientException',
              );
            },
          );
        },
      );

      group(
        'checkIsSuccessStatusCode',
        () {
          for (final statusCode in [200, 299]) {
            test(
              'returns response when status code is $statusCode',
              () {
                final response = http.Response(
                  '',
                  statusCode,
                );

                expect(
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    response,
                  ),
                  response,
                );
              },
            );
          }

          for (final statusCode in [199, 300]) {
            test(
              'throws OctopusEnergyApiClientException when status code is $statusCode',
              () {
                expect(
                  () {
                    OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                      http.Response(
                        '',
                        statusCode,
                      ),
                    );
                  },
                  throwsA(isA<OctopusEnergyApiClientException>()),
                );
              },
            );
          }

          test(
            'throws OctopusEnergyApiClientException with message when content-type is application/json and body is a string',
            () {
              const message = 'Something went wrong';

              expect(
                () {
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    http.Response(
                      json.encode(message),
                      500,
                      headers: {
                        'content-type': 'application/json',
                      },
                    ),
                  );
                },
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) {
                      return exception.message;
                    },
                    'message',
                    message,
                  ),
                ),
              );
            },
          );

          test(
            'throws OctopusEnergyApiClientException with message when content-type is application/json and body is an object and detail is not null',
            () {
              const detail = 'Something went wrong';

              expect(
                () {
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    http.Response(
                      json.encode(
                        {
                          'detail': detail,
                        },
                      ),
                      500,
                      headers: {
                        'content-type': 'application/json',
                      },
                    ),
                  );
                },
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) {
                      return exception.message;
                    },
                    'message',
                    detail,
                  ),
                ),
              );
            },
          );

          test(
            'throws OctopusEnergyApiClientException with message when content-type is application/json; charset=utf-8',
            () {
              const detail = 'Something went wrong';

              expect(
                () {
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    http.Response(
                      json.encode(
                        {
                          'detail': detail,
                        },
                      ),
                      500,
                      headers: {
                        'content-type': 'application/json; charset=utf-8',
                      },
                    ),
                  );
                },
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) {
                      return exception.message;
                    },
                    'message',
                    detail,
                  ),
                ),
              );
            },
          );

          test(
            'throws OctopusEnergyApiClientException without message when content-type is application/json and body is an object and detail is undefined',
            () {
              expect(
                () {
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    http.Response(
                      json.encode(
                        {
                          'error': 'Something went wrong',
                        },
                      ),
                      500,
                      headers: {
                        'content-type': 'application/json',
                      },
                    ),
                  );
                },
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) {
                      return exception.message;
                    },
                    'message',
                    isNull,
                  ),
                ),
              );
            },
          );

          test(
            'throws OctopusEnergyApiClientException without message when content-type is not application/json',
            () {
              expect(
                () {
                  OctopusEnergyApiClientException.checkIsSuccessStatusCode(
                    http.Response(
                      '',
                      500,
                      headers: {
                        'content-type': 'text/plain',
                      },
                    ),
                  );
                },
                throwsA(
                  isA<OctopusEnergyApiClientException>().having(
                    (exception) {
                      return exception.message;
                    },
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
