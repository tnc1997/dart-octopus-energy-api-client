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
                  'address_line_1': '742 Evergreen Terrace',
                  'address_line_2': 'Springfield Address Line 2',
                  'address_line_3': 'Springfield Address Line 3',
                  'county': 'Springfield County',
                  'delivery_point_identifier': 'DP123',
                  'postcode': 'AB1 2CD',
                  'town': 'Springfield Town',
                },
                'billing_options': {
                  'period_length': 1,
                  'period_start_day': 1,
                  'period_start_month': 1,
                },
                'brand_code': 'OCTOPUS_ENERGY',
                'business': {
                  'annual_turnover': 100000,
                  'business_type': 'LIMITED',
                  'head_count': 10,
                  'is_ccl_exempt': true,
                  'is_vat_exempt': true,
                  'name': 'Business Name',
                  'number': '12345678',
                },
                'deposit': {
                  'amount': 100,
                  'key': 'KEY',
                  'reason': 'REASON',
                },
                'electricity_meter_points': [
                  {
                    'mpan': '1234567890',
                    'quote': {
                      'annual_payment': 1000,
                    },
                  }
                ],
                'gas_meter_points': [
                  {
                    'mprn': '1234567890',
                    'quote': {
                      'annual_payment': 500,
                    },
                  }
                ],
                'is_change_of_tenancy': false,
                'metadata': [
                  {
                    'key': 'KEY',
                    'value': 'VALUE',
                  }
                ],
                'payment': {
                  'account_name': 'Homer Simpson',
                  'account_number': '12345678',
                  'account_sort_code': '123456',
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
                'quote_code': 'QUOTE123',
                'quote_request_code': 'REQUEST123',
                'reference': 'REF456',
                'referral_code': 'REFERRAL123',
                'requires_postal_comms': true,
                'sales_channel': 'DIRECT',
                'sales_subchannel': 'SUBCHANNEL',
                'signup_reward_code': 'SIGNUP123',
                'smart_meter_interest': 'SMETS2_INTEREST_INTERESTED',
                'smart_meter_read_permission': 'HALF_HOURLY',
                'smart_onboarding_product_type': 'AGILE',
                'sold_at': '1970-01-01T00:00:00.000',
                'source': 'INTERNET',
                'users': [
                  {
                    'email': 'homer.simpson@example.com',
                    'family_name': 'Simpson',
                    'given_name': 'Homer',
                    'opted_in_for_marketing': true,
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
                result.affiliate?.affiliateLinkSubdomain,
                'affiliate',
              );

              expect(
                result.affiliate?.organizationName,
                'Organization',
              );

              expect(
                result.affiliate?.signupRewardCode,
                'REWARD123',
              );

              expect(
                result.billingAddress.addressLine1,
                '742 Evergreen Terrace',
              );

              expect(
                result.billingAddress.addressLine2,
                'Springfield Address Line 2',
              );

              expect(
                result.billingAddress.addressLine3,
                'Springfield Address Line 3',
              );

              expect(
                result.billingAddress.county,
                'Springfield County',
              );

              expect(
                result.billingAddress.deliveryPointIdentifier,
                'DP123',
              );

              expect(
                result.billingAddress.postcode,
                'AB1 2CD',
              );

              expect(
                result.billingAddress.town,
                'Springfield Town',
              );

              expect(
                result.billingOptions?.periodLength,
                1,
              );

              expect(
                result.billingOptions?.periodStartDay,
                1,
              );

              expect(
                result.billingOptions?.periodStartMonth,
                1,
              );

              expect(
                result.brandCode,
                BrandCode.octopusEnergy,
              );

              expect(
                result.business?.annualTurnover,
                100000,
              );

              expect(
                result.business?.businessType,
                BusinessType.limited,
              );

              expect(
                result.business?.headCount,
                10,
              );

              expect(
                result.business?.isCclExempt,
                isTrue,
              );

              expect(
                result.business?.isVatExempt,
                isTrue,
              );

              expect(
                result.business?.name,
                'Business Name',
              );

              expect(
                result.business?.number,
                '12345678',
              );

              expect(
                result.deposit?.amount,
                100,
              );

              expect(
                result.deposit?.key,
                'KEY',
              );

              expect(
                result.deposit?.reason,
                'REASON',
              );

              expect(
                result.electricityMeterPoints?.length,
                1,
              );

              expect(
                result.electricityMeterPoints?[0].mpan,
                '1234567890',
              );

              expect(
                result.gasMeterPoints?.length,
                1,
              );

              expect(
                result.gasMeterPoints?[0].mprn,
                '1234567890',
              );

              expect(
                result.isChangeOfTenancy,
                false,
              );

              expect(
                result.metadata?.length,
                1,
              );

              expect(
                result.metadata?[0].key,
                'KEY',
              );

              expect(
                result.metadata?[0].value,
                'VALUE',
              );

              expect(
                result.payment?.accountName,
                'Homer Simpson',
              );

              expect(
                result.payment?.accountNumber,
                '12345678',
              );

              expect(
                result.payment?.accountSortCode,
                '123456',
              );

              expect(
                result.payment?.delayDays,
                0,
              );

              expect(
                result.payment?.method,
                PaymentMethod.monthlyDirectDebit,
              );

              expect(
                result.payment?.paymentDay,
                1,
              );

              expect(
                result.preferredSsd,
                DateTime.parse('1970-01-01T00:00:00.000'),
              );

              expect(
                result.previousBillingAddress?.addressLine1,
                '123 Fake St',
              );

              expect(
                result.previousBillingAddress?.postcode,
                'EF5 6GH',
              );

              expect(
                result.promoRewardCode,
                'PROMO123',
              );

              expect(
                result.quoteCode,
                'QUOTE123',
              );

              expect(
                result.quoteRequestCode,
                'REQUEST123',
              );

              expect(
                result.reference,
                'REF456',
              );

              expect(
                result.referralCode,
                'REFERRAL123',
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
                DateTime.parse('1970-01-01T00:00:00.000'),
              );

              expect(
                result.source,
                AccountSource.internet,
              );

              expect(
                result.users.length,
                1,
              );

              expect(
                result.users[0].email,
                'homer.simpson@example.com',
              );

              expect(
                result.users[0].familyName,
                'Simpson',
              );

              expect(
                result.users[0].givenName,
                'Homer',
              );

              expect(
                result.users[0].optedInForMarketing,
                isTrue,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'account_type': 'DOMESTIC',
                'billing_address': {
                  'address_line_1': '742 Evergreen Terrace',
                  'postcode': 'AB1 2CD',
                },
                'is_change_of_tenancy': false,
                'reference': 'REF456',
                'source': 'INTERNET',
                'users': [
                  {
                    'email': 'homer.simpson@example.com',
                    'family_name': 'Simpson',
                    'given_name': 'Homer',
                    'opted_in_for_marketing': true,
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
                result.billingAddress.addressLine1,
                '742 Evergreen Terrace',
              );

              expect(
                result.billingAddress.postcode,
                'AB1 2CD',
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
                'REF456',
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
                result.users.length,
                1,
              );

              expect(
                result.users[0].email,
                'homer.simpson@example.com',
              );

              expect(
                result.users[0].familyName,
                'Simpson',
              );

              expect(
                result.users[0].givenName,
                'Homer',
              );

              expect(
                result.users[0].optedInForMarketing,
                isTrue,
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
                  addressLine1: '742 Evergreen Terrace',
                  addressLine2: 'Springfield Address Line 2',
                  addressLine3: 'Springfield Address Line 3',
                  county: 'Springfield County',
                  deliveryPointIdentifier: 'DP123',
                  postcode: 'AB1 2CD',
                  town: 'Springfield Town',
                ),
                billingOptions: BillingOptions(
                  periodLength: 1,
                  periodStartDay: 1,
                  periodStartMonth: 1,
                ),
                brandCode: BrandCode.octopusEnergy,
                business: Business(
                  annualTurnover: 100000,
                  businessType: BusinessType.limited,
                  headCount: 10,
                  isCclExempt: true,
                  isVatExempt: true,
                  name: 'Business Name',
                  number: '12345678',
                ),
                deposit: Deposit(
                  amount: 100,
                  key: 'KEY',
                  reason: 'REASON',
                ),
                electricityMeterPoints: [
                  ElectricityMeterPoint(
                    mpan: '1234567890',
                    quote: Quote(
                      annualPayment: 1000,
                    ),
                  )
                ],
                gasMeterPoints: [
                  GasMeterPoint(
                    mprn: '1234567890',
                    quote: Quote(
                      annualPayment: 500,
                    ),
                  )
                ],
                isChangeOfTenancy: false,
                metadata: [
                  Metadata(
                    key: 'KEY',
                    value: 'VALUE',
                  )
                ],
                payment: Payment(
                  accountName: 'Homer Simpson',
                  accountNumber: '12345678',
                  accountSortCode: '123456',
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
                quoteCode: 'QUOTE123',
                quoteRequestCode: 'REQUEST123',
                reference: 'REF456',
                referralCode: 'REFERRAL123',
                requiresPostalComms: true,
                salesChannel: SalesChannel.direct,
                salesSubchannel: 'SUBCHANNEL',
                signupRewardCode: 'SIGNUP123',
                smartMeterInterest: SmartMeterInterest.smets2InterestInterested,
                smartMeterReadPermission: SmartMeterReadPermission.halfHourly,
                smartOnboardingProductType: SmartOnboardingProductType.agile,
                soldAt: DateTime.parse('1970-01-01T00:00:00.000'),
                source: AccountSource.internet,
                users: [
                  User(
                    email: 'homer.simpson@example.com',
                    familyName: 'Simpson',
                    givenName: 'Homer',
                    optedInForMarketing: true,
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
                result['affiliate']['affiliate_link_subdomain'],
                'affiliate',
              );

              expect(
                result['affiliate']['organization_name'],
                'Organization',
              );

              expect(
                result['affiliate']['signup_reward_code'],
                'REWARD123',
              );

              expect(
                result['billing_address']['address_line_1'],
                '742 Evergreen Terrace',
              );

              expect(
                result['billing_address']['address_line_2'],
                'Springfield Address Line 2',
              );

              expect(
                result['billing_address']['address_line_3'],
                'Springfield Address Line 3',
              );

              expect(
                result['billing_address']['county'],
                'Springfield County',
              );

              expect(
                result['billing_address']['delivery_point_identifier'],
                'DP123',
              );

              expect(
                result['billing_address']['postcode'],
                'AB1 2CD',
              );

              expect(
                result['billing_address']['town'],
                'Springfield Town',
              );

              expect(
                result['billing_options']['period_length'],
                1,
              );

              expect(
                result['billing_options']['period_start_day'],
                1,
              );

              expect(
                result['billing_options']['period_start_month'],
                1,
              );

              expect(
                result['brand_code'],
                'OCTOPUS_ENERGY',
              );

              expect(
                result['business']['annual_turnover'],
                100000,
              );

              expect(
                result['business']['business_type'],
                'LIMITED',
              );

              expect(
                result['business']['head_count'],
                10,
              );

              expect(
                result['business']['is_ccl_exempt'],
                isTrue,
              );

              expect(
                result['business']['is_vat_exempt'],
                isTrue,
              );

              expect(
                result['business']['name'],
                'Business Name',
              );

              expect(
                result['business']['number'],
                '12345678',
              );

              expect(
                result['deposit']['amount'],
                100,
              );

              expect(
                result['deposit']['key'],
                'KEY',
              );

              expect(
                result['deposit']['reason'],
                'REASON',
              );

              expect(
                result['electricity_meter_points'].length,
                1,
              );

              expect(
                result['electricity_meter_points'][0]['mpan'],
                '1234567890',
              );

              expect(
                result['gas_meter_points'].length,
                1,
              );

              expect(
                result['gas_meter_points'][0]['mprn'],
                '1234567890',
              );

              expect(
                result['is_change_of_tenancy'],
                false,
              );

              expect(
                result['metadata'].length,
                1,
              );

              expect(
                result['metadata'][0]['key'],
                'KEY',
              );

              expect(
                result['metadata'][0]['value'],
                'VALUE',
              );

              expect(
                result['payment']['account_name'],
                'Homer Simpson',
              );

              expect(
                result['payment']['account_number'],
                '12345678',
              );

              expect(
                result['payment']['account_sort_code'],
                '123456',
              );

              expect(
                result['payment']['delay_days'],
                0,
              );

              expect(
                result['payment']['method'],
                'MONTHLY_DIRECT_DEBIT',
              );

              expect(
                result['payment']['payment_day'],
                1,
              );

              expect(
                result['preferred_ssd'],
                '1970-01-01T00:00:00.000',
              );

              expect(
                result['previous_billing_address']['address_line_1'],
                '123 Fake St',
              );

              expect(
                result['previous_billing_address']['postcode'],
                'EF5 6GH',
              );

              expect(
                result['promo_reward_code'],
                'PROMO123',
              );

              expect(
                result['quote_code'],
                'QUOTE123',
              );

              expect(
                result['quote_request_code'],
                'REQUEST123',
              );

              expect(
                result['reference'],
                'REF456',
              );

              expect(
                result['referral_code'],
                'REFERRAL123',
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
                '1970-01-01T00:00:00.000',
              );

              expect(
                result['source'],
                'INTERNET',
              );

              expect(
                result['users'].length,
                1,
              );

              expect(
                result['users'][0]['email'],
                'homer.simpson@example.com',
              );

              expect(
                result['users'][0]['family_name'],
                'Simpson',
              );

              expect(
                result['users'][0]['given_name'],
                'Homer',
              );

              expect(
                result['users'][0]['opted_in_for_marketing'],
                isTrue,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Create(
                accountType: AccountType.domestic,
                billingAddress: Address(
                  addressLine1: '742 Evergreen Terrace',
                  postcode: 'AB1 2CD',
                ),
                isChangeOfTenancy: false,
                reference: 'REF456',
                source: AccountSource.internet,
                users: [
                  User(
                    email: 'homer.simpson@example.com',
                    familyName: 'Simpson',
                    givenName: 'Homer',
                    optedInForMarketing: true,
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
                result['billing_address']['address_line_1'],
                '742 Evergreen Terrace',
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
                'REF456',
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
                result['users'].length,
                1,
              );
            },
          );
        },
      );
    },
  );
}
