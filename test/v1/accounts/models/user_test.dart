import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'User',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'credit_score_data': {
                  'risk_bracket': 'LOW',
                  'score': 700,
                },
                'date_of_birth': '1966-01-01',
                'email': 'chris@example.com',
                'family_name': 'Johnson',
                'given_name': 'Chris',
                'label': 'Home',
                'landline': '02084459876',
                'mobile': '07742628216',
                'opted_in_for_marketing': true,
                'opted_in_to_third_parties': false,
                'psr': {
                  'requires_signup': true,
                },
                'title': 'Dr',
              };

              final result = User.fromJson(json);

              expect(
                result.creditScoreData,
                isA<CreditScoreData>(),
              );

              expect(
                result.dateOfBirth,
                DateTime.parse('1966-01-01'),
              );

              expect(
                result.email,
                'chris@example.com',
              );

              expect(
                result.familyName,
                'Johnson',
              );

              expect(
                result.givenName,
                'Chris',
              );

              expect(
                result.label,
                'Home',
              );

              expect(
                result.landline,
                '02084459876',
              );

              expect(
                result.mobile,
                '07742628216',
              );

              expect(
                result.optedInForMarketing,
                isTrue,
              );

              expect(
                result.optedInToThirdParties,
                isFalse,
              );

              expect(
                result.psr,
                isA<Psr>(),
              );

              expect(
                result.title,
                'Dr',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'email': 'chris@example.com',
                'family_name': 'Johnson',
                'given_name': 'Chris',
                'opted_in_for_marketing': false,
              };

              final result = User.fromJson(json);

              expect(
                result.creditScoreData,
                isNull,
              );

              expect(
                result.dateOfBirth,
                isNull,
              );

              expect(
                result.email,
                'chris@example.com',
              );

              expect(
                result.familyName,
                'Johnson',
              );

              expect(
                result.givenName,
                'Chris',
              );

              expect(
                result.label,
                isNull,
              );

              expect(
                result.landline,
                isNull,
              );

              expect(
                result.mobile,
                isNull,
              );

              expect(
                result.optedInForMarketing,
                isFalse,
              );

              expect(
                result.optedInToThirdParties,
                isNull,
              );

              expect(
                result.psr,
                isNull,
              );

              expect(
                result.title,
                isNull,
              );
            },
          );

          test(
            'should return model with null dateOfBirth from json with an empty string',
            () {
              final json = {
                'credit_score_data': {
                  'risk_bracket': 'LOW',
                  'score': 700,
                },
                'date_of_birth': '',
                'email': 'chris@example.com',
                'family_name': 'Johnson',
                'given_name': 'Chris',
                'label': 'Home',
                'landline': '02084459876',
                'mobile': '07742628216',
                'opted_in_for_marketing': true,
                'opted_in_to_third_parties': false,
                'psr': {
                  'requires_signup': true,
                },
                'title': 'Dr',
              };

              final result = User.fromJson(json);

              expect(
                result.dateOfBirth,
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
              final model = User(
                creditScoreData: CreditScoreData(
                  riskBracket: CreditRiskBracket.low,
                  score: 700,
                ),
                dateOfBirth: DateTime.parse('1966-01-01'),
                email: 'chris@example.com',
                familyName: 'Johnson',
                givenName: 'Chris',
                label: 'Home',
                landline: '02084459876',
                mobile: '07742628216',
                optedInForMarketing: true,
                optedInToThirdParties: false,
                psr: Psr(
                  requiresSignup: true,
                ),
                title: 'Dr',
              );

              final result = model.toJson();

              expect(
                result['credit_score_data'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['date_of_birth'],
                '1966-01-01T00:00:00.000',
              );

              expect(
                result['email'],
                'chris@example.com',
              );

              expect(
                result['family_name'],
                'Johnson',
              );

              expect(
                result['given_name'],
                'Chris',
              );

              expect(
                result['label'],
                'Home',
              );

              expect(
                result['landline'],
                '02084459876',
              );

              expect(
                result['mobile'],
                '07742628216',
              );

              expect(
                result['opted_in_for_marketing'],
                true,
              );

              expect(
                result['opted_in_to_third_parties'],
                false,
              );

              expect(
                result['psr'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['title'],
                'Dr',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = User(
                email: 'chris@example.com',
                familyName: 'Johnson',
                givenName: 'Chris',
                optedInForMarketing: false,
              );

              final result = model.toJson();

              expect(
                result['credit_score_data'],
                isNull,
              );

              expect(
                result['date_of_birth'],
                isNull,
              );

              expect(
                result['email'],
                'chris@example.com',
              );

              expect(
                result['family_name'],
                'Johnson',
              );

              expect(
                result['given_name'],
                'Chris',
              );

              expect(
                result['label'],
                isNull,
              );

              expect(
                result['landline'],
                isNull,
              );

              expect(
                result['mobile'],
                isNull,
              );

              expect(
                result['opted_in_for_marketing'],
                isFalse,
              );

              expect(
                result['opted_in_to_third_parties'],
                isNull,
              );

              expect(
                result['psr'],
                isNull,
              );

              expect(
                result['title'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
