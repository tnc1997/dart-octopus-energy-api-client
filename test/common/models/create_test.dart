import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Create',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'account_reference': 'REF123',
                'account_type': 'DOMESTIC',
                'affiliate': {
                  'affiliate_link_subdomain': 'affiliate',
                  'organization_name': 'Organization',
                  'signup_reward_code': 'REWARD123',
                },
                'billing_address': {
                  'address_line_1': '87 Doveys Close',
                  'address_line_2': 'Address Line 2',
                  'address_line_3': 'Address Line 3',
                  'county': 'Hampshire',
                  'postcode': 'BH24 4BP',
                  'town': 'Ringwood',
                },
                'billing_options': {
                  'period_length': 1,
                  'period_start_day': 2,
                  'period_start_month': 3,
                },
                'brand_code': 'OCTOPUS_ENERGY',
                'business': {
                  'annual_turnover': 100000,
                  'business_type': 'LIMITED',
                  'head_count': 10,
                  'is_ccl_exempt': true,
                  'is_vat_exempt': false,
                  'name': 'Business Name',
                  'number': '87654321',
                },
                'deposit': {
                  'amount': 100,
                  'key': 'KEY',
                  'reason': 'REASON',
                },
                'electricity_meter_points': [
                  {
                    'mpan': '2000024512368',
                    'quote': {
                      'annual_payment': 46576,
                    },
                  }
                ],
                'gas_meter_points': [
                  {
                    'mprn': '3016362107',
                    'quote': {
                      'annual_payment': 44961,
                    },
                  }
                ],
                'is_change_of_tenancy': false,
                'metadata': [
                  {
                    'key': 'metadata_key',
                    'value': 'VALUE',
                  }
                ],
                'payment': {
                  'account_name': 'Chris Johnson',
                  'account_number': '12345678',
                  'account_sort_code': '111111',
                  'delay_days': 0,
                  'method': 'MONTHLY_DIRECT_DEBIT',
                  'payment_day': 1,
                },
                'preferred_ssd': '1970-01-01T00:00:00.000',
                'previous_billing_address': {
                  'address_line_1': '123 Fake St',
                  'postcode': 'EF5 6GH',
                },
                'promo_reward_code': 'PROMO123',
                'quote_code': '1981fd3936cc4cfda70b2e697347b885',
                'quote_request_code': 'REQUEST123',
                'reference': '12067-056785',
                'referral_code': 'some-referral-123',
                'requires_postal_comms': true,
                'sales_channel': 'DIRECT',
                'sales_subchannel': 'SUBCHANNEL',
                'signup_reward_code': 'SIGNUP123',
                'smart_meter_interest': 'SMETS2_INTEREST_INTERESTED',
                'smart_meter_read_permission': 'HALF_HOURLY',
                'smart_onboarding_product_type': 'AGILE',
                'sold_at': '2017-07-28T14:30:00+01:00',
                'source': 'INTERNET',
                'users': [
                  {
                    'email': 'chris@example.com',
                    'family_name': 'Johnson',
                    'given_name': 'Chris',
                    'opted_in_for_marketing': false,
                  },
                ],
              };

              final result = Create.fromJson(json);

              expect(
                result.accountReference,
                'REF123',
              );

              expect(
                result.accountType,
                AccountType.domestic,
              );

              expect(
                result.affiliate,
                isA<Affiliate>(),
              );

              expect(
                result.billingAddress,
                isA<Address>(),
              );

              expect(
                result.billingOptions,
                isA<BillingOptions>(),
              );

              expect(
                result.brandCode,
                BrandCode.octopusEnergy,
              );

              expect(
                result.business,
                isA<Business>(),
              );

              expect(
                result.deposit,
                isA<Deposit>(),
              );

              expect(
                result.electricityMeterPoints,
                isA<List<ElectricityMeterPoint>>().having(
                  (electricityMeterPoints) => electricityMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.gasMeterPoints,
                isA<List<GasMeterPoint>>().having(
                  (gasMeterPoints) => gasMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.isChangeOfTenancy,
                false,
              );

              expect(
                result.metadata,
                isA<List<Metadata>>().having(
                  (metadata) => metadata.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.payment,
                isA<Payment>(),
              );

              expect(
                result.preferredSsd,
                DateTime.parse('1970-01-01T00:00:00.000'),
              );

              expect(
                result.previousBillingAddress,
                isA<Address>(),
              );

              expect(
                result.promoRewardCode,
                'PROMO123',
              );

              expect(
                result.quoteCode,
                '1981fd3936cc4cfda70b2e697347b885',
              );

              expect(
                result.quoteRequestCode,
                'REQUEST123',
              );

              expect(
                result.reference,
                '12067-056785',
              );

              expect(
                result.referralCode,
                'some-referral-123',
              );

              expect(
                result.requiresPostalComms,
                isTrue,
              );

              expect(
                result.salesChannel,
                SalesChannel.direct,
              );

              expect(
                result.salesSubchannel,
                'SUBCHANNEL',
              );

              expect(
                result.signupRewardCode,
                'SIGNUP123',
              );

              expect(
                result.smartMeterInterest,
                SmartMeterInterest.smets2InterestInterested,
              );

              expect(
                result.smartMeterReadPermission,
                SmartMeterReadPermission.halfHourly,
              );

              expect(
                result.smartOnboardingProductType,
                SmartOnboardingProductType.agile,
              );

              expect(
                result.soldAt,
                DateTime.parse('2017-07-28T14:30:00+01:00'),
              );

              expect(
                result.source,
                AccountSource.internet,
              );

              expect(
                result.users,
                isA<List<User>>().having(
                  (users) => users.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'account_type': 'DOMESTIC',
                'billing_address': {
                  'address_line_1': '87 Doveys Close',
                  'postcode': 'BH24 4BP',
                },
                'is_change_of_tenancy': false,
                'reference': '12067-056785',
                'source': 'INTERNET',
                'users': [
                  {
                    'email': 'chris@example.com',
                    'family_name': 'Johnson',
                    'given_name': 'Chris',
                    'opted_in_for_marketing': false,
                  },
                ],
              };

              final result = Create.fromJson(json);

              expect(
                result.accountReference,
                isNull,
              );

              expect(
                result.accountType,
                AccountType.domestic,
              );

              expect(
                result.affiliate,
                isNull,
              );

              expect(
                result.billingAddress,
                isA<Address>(),
              );

              expect(
                result.billingOptions,
                isNull,
              );

              expect(
                result.brandCode,
                isNull,
              );

              expect(
                result.business,
                isNull,
              );

              expect(
                result.deposit,
                isNull,
              );

              expect(
                result.electricityMeterPoints,
                isNull,
              );

              expect(
                result.gasMeterPoints,
                isNull,
              );

              expect(
                result.isChangeOfTenancy,
                false,
              );

              expect(
                result.metadata,
                isNull,
              );

              expect(
                result.payment,
                isNull,
              );

              expect(
                result.preferredSsd,
                isNull,
              );

              expect(
                result.previousBillingAddress,
                isNull,
              );

              expect(
                result.promoRewardCode,
                isNull,
              );

              expect(
                result.quoteCode,
                isNull,
              );

              expect(
                result.quoteRequestCode,
                isNull,
              );

              expect(
                result.reference,
                '12067-056785',
              );

              expect(
                result.referralCode,
                isNull,
              );

              expect(
                result.requiresPostalComms,
                isNull,
              );

              expect(
                result.salesChannel,
                isNull,
              );

              expect(
                result.salesSubchannel,
                isNull,
              );

              expect(
                result.signupRewardCode,
                isNull,
              );

              expect(
                result.smartMeterInterest,
                isNull,
              );

              expect(
                result.smartMeterReadPermission,
                isNull,
              );

              expect(
                result.smartOnboardingProductType,
                isNull,
              );

              expect(
                result.soldAt,
                isNull,
              );

              expect(
                result.source,
                AccountSource.internet,
              );

              expect(
                result.users,
                isA<List<User>>().having(
                  (users) => users.length,
                  'length',
                  1,
                ),
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = Create(
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

              final result = model.toJson();

              expect(
                result['account_reference'],
                'REF123',
              );

              expect(
                result['account_type'],
                'DOMESTIC',
              );

              expect(
                result['affiliate'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['billing_address'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['billing_options'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['brand_code'],
                'OCTOPUS_ENERGY',
              );

              expect(
                result['business'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['deposit'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['electricity_meter_points'],
                isA<List<Map<String, dynamic>>>().having(
                  (electricityMeterPoints) => electricityMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['gas_meter_points'],
                isA<List<Map<String, dynamic>>>().having(
                  (gasMeterPoints) => gasMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['is_change_of_tenancy'],
                false,
              );

              expect(
                result['metadata'],
                isA<List<Map<String, dynamic>>>().having(
                  (metadata) => metadata.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['payment'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['preferred_ssd'],
                '1970-01-01T00:00:00.000',
              );

              expect(
                result['previous_billing_address'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['promo_reward_code'],
                'PROMO123',
              );

              expect(
                result['quote_code'],
                '1981fd3936cc4cfda70b2e697347b885',
              );

              expect(
                result['quote_request_code'],
                'REQUEST123',
              );

              expect(
                result['reference'],
                '12067-056785',
              );

              expect(
                result['referral_code'],
                'some-referral-123',
              );

              expect(
                result['requires_postal_comms'],
                isTrue,
              );

              expect(
                result['sales_channel'],
                'DIRECT',
              );

              expect(
                result['sales_subchannel'],
                'SUBCHANNEL',
              );

              expect(
                result['signup_reward_code'],
                'SIGNUP123',
              );

              expect(
                result['smart_meter_interest'],
                'SMETS2_INTEREST_INTERESTED',
              );

              expect(
                result['smart_meter_read_permission'],
                'HALF_HOURLY',
              );

              expect(
                result['smart_onboarding_product_type'],
                'AGILE',
              );

              expect(
                result['sold_at'],
                '2017-07-28T13:30:00.000Z',
              );

              expect(
                result['source'],
                'INTERNET',
              );

              expect(
                result['users'],
                isA<List<Map<String, dynamic>>>().having(
                  (users) => users.length,
                  'length',
                  1,
                ),
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Create(
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

              final result = model.toJson();

              expect(
                result['account_reference'],
                isNull,
              );

              expect(
                result['account_type'],
                'DOMESTIC',
              );

              expect(
                result['affiliate'],
                isNull,
              );

              expect(
                result['billing_address'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['billing_options'],
                isNull,
              );

              expect(
                result['brand_code'],
                isNull,
              );

              expect(
                result['business'],
                isNull,
              );

              expect(
                result['deposit'],
                isNull,
              );

              expect(
                result['electricity_meter_points'],
                isNull,
              );

              expect(
                result['gas_meter_points'],
                isNull,
              );

              expect(
                result['is_change_of_tenancy'],
                false,
              );

              expect(
                result['metadata'],
                isNull,
              );

              expect(
                result['payment'],
                isNull,
              );

              expect(
                result['preferred_ssd'],
                isNull,
              );

              expect(
                result['previous_billing_address'],
                isNull,
              );

              expect(
                result['promo_reward_code'],
                isNull,
              );

              expect(
                result['quote_code'],
                isNull,
              );

              expect(
                result['quote_request_code'],
                isNull,
              );

              expect(
                result['reference'],
                '12067-056785',
              );

              expect(
                result['referral_code'],
                isNull,
              );

              expect(
                result['requires_postal_comms'],
                isNull,
              );

              expect(
                result['sales_channel'],
                isNull,
              );

              expect(
                result['sales_subchannel'],
                isNull,
              );

              expect(
                result['signup_reward_code'],
                isNull,
              );

              expect(
                result['smart_meter_interest'],
                isNull,
              );

              expect(
                result['smart_meter_read_permission'],
                isNull,
              );

              expect(
                result['smart_onboarding_product_type'],
                isNull,
              );

              expect(
                result['sold_at'],
                isNull,
              );

              expect(
                result['source'],
                'INTERNET',
              );

              expect(
                result['users'],
                isA<List<Map<String, dynamic>>>().having(
                  (users) => users.length,
                  'length',
                  1,
                ),
              );
            },
          );
        },
      );
    },
  );
}
