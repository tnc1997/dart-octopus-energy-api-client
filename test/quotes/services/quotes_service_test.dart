import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'QuotesService',
    () {
      group(
        'createQuote',
        () {
          test(
            'includes the content type header',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      json.encode(quoteCreated),
                      200,
                    );
                  },
                ),
              );

              await service.createQuote(
                create,
              );

              expect(
                request.headers['content-type'],
                'application/json',
              );
            },
          );

          test(
            'requests the quotes path',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      json.encode(quoteCreated),
                      200,
                    );
                  },
                ),
              );

              await service.createQuote(
                create,
              );

              expect(
                request.url.path,
                '/v1/quotes/',
              );
            },
          );

          test(
            'returns a QuoteCreated on success',
            () async {
              final service = QuotesService(
                client: MockClient(
                  (request) async => http.Response(
                    json.encode(quoteCreated),
                    200,
                  ),
                ),
              );

              final result = await service.createQuote(
                create,
              );

              expect(
                result,
                isA<QuoteCreated>(),
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      json.encode(quoteCreated),
                      200,
                    );
                  },
                ),
              );

              await service.createQuote(
                create,
              );

              expect(
                request.method,
                'POST',
              );
            },
          );

          test(
            'sends the encoded body',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      json.encode(quoteCreated),
                      200,
                    );
                  },
                ),
              );

              await service.createQuote(
                create,
              );

              expect(
                request.body,
                json.encode(create.toJson()),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = QuotesService(
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
                () => service.createQuote(create),
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
              final service = QuotesService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.createQuote(create),
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
        'shareQuoteViaEmail',
        () {
          test(
            'completes on success',
            () async {
              final service = QuotesService(
                client: MockClient(
                  (request) async => http.Response(
                    '',
                    200,
                  ),
                ),
              );

              await expectLater(
                service.shareQuoteViaEmail('QUOTE', 'PRODUCT', emails),
                completes,
              );
            },
          );

          test(
            'includes the content type header',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.shareQuoteViaEmail(
                'QUOTE',
                'PRODUCT',
                emails,
              );

              expect(
                request.headers['content-type'],
                'application/json',
              );
            },
          );

          test(
            'requests the share quote path',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.shareQuoteViaEmail(
                'QUOTE',
                'PRODUCT',
                emails,
              );

              expect(
                request.url.path,
                '/v1/quotes/QUOTE/products/PRODUCT/',
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.shareQuoteViaEmail(
                'QUOTE',
                'PRODUCT',
                emails,
              );

              expect(
                request.method,
                'POST',
              );
            },
          );

          test(
            'sends the encoded body',
            () async {
              late http.Request request;

              final service = QuotesService(
                client: MockClient(
                  (http.Request r) async {
                    request = r;

                    return http.Response(
                      '',
                      200,
                    );
                  },
                ),
              );

              await service.shareQuoteViaEmail(
                'QUOTE',
                'PRODUCT',
                emails,
              );

              expect(
                request.body,
                json.encode(emails.toJson()),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = QuotesService(
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
                () => service.shareQuoteViaEmail('QUOTE', 'PRODUCT', emails),
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
              final service = QuotesService(
                client: MockClient(
                  (request) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.shareQuoteViaEmail('QUOTE', 'PRODUCT', emails),
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

final create = Create(
  accountType: AccountType.domestic,
  billingAddress: Address(
    addressLine1: '87 Doveys Close',
    postcode: 'BH24 4BP',
  ),
  isChangeOfTenancy: false,
  reference: '12067-056785',
  source: AccountSource.internet,
  users: [
    User(
      email: 'chris@example.com',
      familyName: 'Johnson',
      givenName: 'Chris',
      optedInForMarketing: false,
    ),
  ],
);

final emails = Emails(
  emails: [
    'chris@example.com',
  ],
);

final quoteCreated = <String, dynamic>{
  'code': '1981fd3936cc4cfda70b2e697347b885',
  'gsp': '_C',
  'products': <dynamic>[
    {
      'id': 1234,
    }
  ],
};
