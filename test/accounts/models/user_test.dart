import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                  'score': 700,
                },
                'date_of_birth': '1990-01-01T00:00:00.000Z',
                'email': 'homer.simpson@example.com',
                'family_name': 'Simpson',
                'given_name': 'Homer',
                'label': 'Home',
                'landline': '0123456789',
                'mobile': '07777777777',
                'opted_in_for_marketing': true,
                'opted_in_to_third_parties': true,
                'psr': {
                  'requires_signup': true,
                },
                'title': 'Mr',
              };

              final result = User.fromJson(json);

              expect(
                result.creditScoreData,
                isNotNull,
              );

              expect(
                result.dateOfBirth,
                DateTime.parse('1990-01-01T00:00:00.000Z'),
              );

              expect(
                result.email,
                'homer.simpson@example.com',
              );

              expect(
                result.familyName,
                'Simpson',
              );

              expect(
                result.givenName,
                'Homer',
              );

              expect(
                result.label,
                'Home',
              );

              expect(
                result.landline,
                '0123456789',
              );

              expect(
                result.mobile,
                '07777777777',
              );

              expect(
                result.optedInForMarketing,
                isTrue,
              );

              expect(
                result.optedInToThirdParties,
                isTrue,
              );

              expect(
                result.psr,
                isNotNull,
              );

              expect(
                result.title,
                'Mr',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'email': 'homer.simpson@example.com',
                'family_name': 'Simpson',
                'given_name': 'Homer',
                'opted_in_for_marketing': true,
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
                'homer.simpson@example.com',
              );

              expect(
                result.familyName,
                'Simpson',
              );

              expect(
                result.givenName,
                'Homer',
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
                isTrue,
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
                  score: 700,
                ),
                dateOfBirth: DateTime.parse('1990-01-01T00:00:00.000Z'),
                email: 'homer.simpson@example.com',
                familyName: 'Simpson',
                givenName: 'Homer',
                label: 'Home',
                landline: '0123456789',
                mobile: '07777777777',
                optedInForMarketing: true,
                optedInToThirdParties: true,
                psr: Psr(
                  requiresSignup: true,
                ),
                title: 'Mr',
              );

              final result = model.toJson();

              expect(
                result['credit_score_data'],
                isNotNull,
              );

              expect(
                result['date_of_birth'],
                '1990-01-01T00:00:00.000Z',
              );

              expect(
                result['email'],
                'homer.simpson@example.com',
              );

              expect(
                result['family_name'],
                'Simpson',
              );

              expect(
                result['given_name'],
                'Homer',
              );

              expect(
                result['label'],
                'Home',
              );

              expect(
                result['landline'],
                '0123456789',
              );

              expect(
                result['mobile'],
                '07777777777',
              );

              expect(
                result['opted_in_for_marketing'],
                true,
              );

              expect(
                result['opted_in_to_third_parties'],
                true,
              );

              expect(
                result['psr'],
                isNotNull,
              );

              expect(
                result['title'],
                'Mr',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = User(
                email: 'homer.simpson@example.com',
                familyName: 'Simpson',
                givenName: 'Homer',
                optedInForMarketing: true,
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
                'homer.simpson@example.com',
              );

              expect(
                result['family_name'],
                'Simpson',
              );

              expect(
                result['given_name'],
                'Homer',
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
                isTrue,
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
