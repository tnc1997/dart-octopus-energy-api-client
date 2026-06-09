import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountsService',
    () {
      group(
        'createAccount',
        () {
          test(
            'includes the content type header',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(successResponse),
                      200,
                    );
                  },
                ),
              );

              await service.createAccount(
                create,
              );

              expect(
                request.headers['content-type'],
                'application/json',
              );
            },
          );

          test(
            'requests the accounts path',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(successResponse),
                      200,
                    );
                  },
                ),
              );

              await service.createAccount(
                create,
              );

              expect(
                request.url.path,
                '/v1/accounts/',
              );
            },
          );

          test(
            'returns a SuccessResponse on success',
            () async {
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    json.encode(successResponse),
                    200,
                  ),
                ),
              );

              final result = await service.createAccount(
                create,
              );

              expect(
                result,
                isA<SuccessResponse>(),
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(successResponse),
                      200,
                    );
                  },
                ),
              );

              await service.createAccount(
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

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(successResponse),
                      200,
                    );
                  },
                ),
              );

              await service.createAccount(
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
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
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
                () => service.createAccount(create),
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
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.createAccount(create),
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
        'getAccount',
        () {
          test(
            'requests the account path',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(account),
                      200,
                    );
                  },
                ),
              );

              await service.getAccount(
                'A-1234ABCD',
              );

              expect(
                request.url.path,
                '/v1/accounts/A-1234ABCD/',
              );
            },
          );

          test(
            'returns an Account on success',
            () async {
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    json.encode(account),
                    200,
                  ),
                ),
              );

              final result = await service.getAccount(
                'A-1234ABCD',
              );

              expect(
                result,
                isA<Account>(),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
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
                () => service.getAccount('A-1234ABCD'),
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
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.getAccount('A-1234ABCD'),
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
        'renewBusinessTariff',
        () {
          test(
            'includes the content type header',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(agreementsCreated),
                      200,
                    );
                  },
                ),
              );

              await service.renewBusinessTariff(
                'A-1234ABCD',
                businessTariffRenewal,
              );

              expect(
                request.headers['content-type'],
                'application/json',
              );
            },
          );

          test(
            'requests the tariff renewal path',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(agreementsCreated),
                      200,
                    );
                  },
                ),
              );

              await service.renewBusinessTariff(
                'A-1234ABCD',
                businessTariffRenewal,
              );

              expect(
                request.url.path,
                '/v1/accounts/A-1234ABCD/tariff-renewal/',
              );
            },
          );

          test(
            'returns an AgreementsCreated on success',
            () async {
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    json.encode(agreementsCreated),
                    200,
                  ),
                ),
              );

              final result = await service.renewBusinessTariff(
                'A-1234ABCD',
                businessTariffRenewal,
              );

              expect(
                result,
                isA<AgreementsCreated>(),
              );
            },
          );

          test(
            'sends a post request',
            () async {
              late http.Request request;

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(agreementsCreated),
                      200,
                    );
                  },
                ),
              );

              await service.renewBusinessTariff(
                'A-1234ABCD',
                businessTariffRenewal,
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

              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async {
                    request = req;

                    return http.Response(
                      json.encode(agreementsCreated),
                      200,
                    );
                  },
                ),
              );

              await service.renewBusinessTariff(
                'A-1234ABCD',
                businessTariffRenewal,
              );

              expect(
                request.body,
                json.encode(businessTariffRenewal.toJson()),
              );
            },
          );

          test(
            'throws with the detail message on a json error response',
            () {
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
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
                () => service.renewBusinessTariff(
                  'A-1234ABCD',
                  businessTariffRenewal,
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
              final service = AccountsService(
                client: MockClient(
                  (http.Request req) async => http.Response(
                    'Internal Server Error',
                    500,
                  ),
                ),
              );

              expect(
                () => service.renewBusinessTariff(
                  'A-1234ABCD',
                  businessTariffRenewal,
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

final account = <String, dynamic>{
  'number': 'A-12341234',
  'properties': [
    {
      'id': 12345,
      'moved_in_at': '1970-01-01T00:00:00.000Z',
    }
  ],
};

final agreementsCreated = <String, dynamic>{
  'account_number': 'A-12AB34CD',
  'agreements': [
    {
      'mpxn': '1013004420117',
      'tariff_code': 'E-1R-SOME-PRODUCT-J',
      'valid_from_date': '2019-12-01',
      'valid_to_date': '2020-12-01',
    }
  ],
};

final businessTariffRenewal = BusinessTariffRenewal(
  agreements: [
    BusinessTariffRenewalAgreement(
      mpxn: '1013004420117',
      tariffCode: 'E-1R-SOME-PRODUCT-J',
      validFromDate: DateTime.parse('2019-12-01'),
      validToDate: DateTime.parse('2020-12-01'),
    ),
  ],
);

final create = Create(
  accountReference: 'REF123',
  accountType: AccountType.domestic,
  affiliate: Affiliate(
    affiliateLinkSubdomain: 'affiliate',
    organizationName: 'Organization',
    signupRewardCode: 'REWARD123',
  ),
  billingAddress: Address(
    addressLine1: '87 Doveys Close',
    addressLine2: 'Address Line 2',
    addressLine3: 'Address Line 3',
    county: 'Hampshire',
    postcode: 'BH24 4BP',
    town: 'Ringwood',
  ),
  billingOptions: BillingOptions(
    periodLength: 1,
    periodStartDay: 2,
    periodStartMonth: 3,
  ),
  brandCode: BrandCode.octopusEnergy,
  business: Business(
    annualTurnover: 100000,
    businessType: BusinessType.limited,
    headCount: 10,
    isCclExempt: true,
    isVatExempt: false,
    name: 'Business Name',
    number: '87654321',
  ),
  deposit: Deposit(
    amount: 100,
    key: 'KEY',
    reason: 'REASON',
  ),
  electricityMeterPoints: [
    ElectricityMeterPoint(
      mpan: '2000024512368',
      quote: Quote(
        annualPayment: 46576,
      ),
    )
  ],
  gasMeterPoints: [
    GasMeterPoint(
      mprn: '3016362107',
      quote: Quote(
        annualPayment: 44961,
      ),
    )
  ],
  isChangeOfTenancy: false,
  metadata: [
    Metadata(
      key: 'metadata_key',
      value: 'VALUE',
    )
  ],
  payment: Payment(
    accountName: 'Chris Johnson',
    accountNumber: '12345678',
    accountSortCode: '111111',
    delayDays: 0,
    method: PaymentMethod.monthlyDirectDebit,
    paymentDay: 1,
  ),
  preferredSsd: DateTime.parse('1970-01-01T00:00:00.000'),
  previousBillingAddress: Address(
    addressLine1: '123 Fake St',
    postcode: 'EF5 6GH',
  ),
  promoRewardCode: 'PROMO123',
  quoteCode: '1981fd3936cc4cfda70b2e697347b885',
  quoteRequestCode: 'REQUEST123',
  reference: '12067-056785',
  referralCode: 'some-referral-123',
  requiresPostalComms: true,
  salesChannel: SalesChannel.direct,
  salesSubchannel: 'SUBCHANNEL',
  signupRewardCode: 'SIGNUP123',
  smartMeterInterest: SmartMeterInterest.smets2InterestInterested,
  smartMeterReadPermission: SmartMeterReadPermission.halfHourly,
  smartOnboardingProductType: SmartOnboardingProductType.agile,
  soldAt: DateTime.parse('2017-07-28T14:30:00+01:00'),
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

final successResponse = <String, dynamic>{
  'number': 'A-12341234',
  'password_reset': {
    'token': 'cmlx6w-1232911237f5d13422c154c07',
    'user_id': 'user_pk_b64_encoded',
  },
};
