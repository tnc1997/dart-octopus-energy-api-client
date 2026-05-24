import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Affiliate',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'affiliate_link_subdomain': 'affiliate',
                'organization_name': 'Affiliate Org',
                'signup_reward_code': 'REWARD123',
              };

              final result = Affiliate.fromJson(json);

              expect(
                result.affiliateLinkSubdomain,
                'affiliate',
              );

              expect(
                result.organizationName,
                'Affiliate Org',
              );

              expect(
                result.signupRewardCode,
                'REWARD123',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = Affiliate.fromJson(json);

              expect(
                result.affiliateLinkSubdomain,
                isNull,
              );

              expect(
                result.organizationName,
                isNull,
              );

              expect(
                result.signupRewardCode,
                isNull,
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
              final model = Affiliate(
                affiliateLinkSubdomain: 'affiliate',
                organizationName: 'Affiliate Org',
                signupRewardCode: 'REWARD123',
              );

              final result = model.toJson();

              expect(
                result['affiliate_link_subdomain'],
                'affiliate',
              );

              expect(
                result['organization_name'],
                'Affiliate Org',
              );

              expect(
                result['signup_reward_code'],
                'REWARD123',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Affiliate();

              final result = model.toJson();

              expect(
                result['affiliate_link_subdomain'],
                isNull,
              );

              expect(
                result['organization_name'],
                isNull,
              );

              expect(
                result['signup_reward_code'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
