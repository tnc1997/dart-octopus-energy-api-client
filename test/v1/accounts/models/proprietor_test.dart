import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Proprietor',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'address': {
                  'line_1': '87 Doveys Close',
                  'postcode': 'BH24 4BP',
                },
                'date_of_birth': '1966-01-01',
                'email_address': 'chris@example.com',
                'first_name': 'Chris',
                'last_name': 'Johnson',
                'phone_number': '07742628216',
              };

              final result = Proprietor.fromJson(json);

              expect(
                result.address,
                isA<ProprietorAddress>(),
              );

              expect(
                result.dateOfBirth,
                DateTime.parse('1966-01-01'),
              );

              expect(
                result.emailAddress,
                'chris@example.com',
              );

              expect(
                result.firstName,
                'Chris',
              );

              expect(
                result.lastName,
                'Johnson',
              );

              expect(
                result.phoneNumber,
                '07742628216',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'email_address': 'chris@example.com',
                'first_name': 'Chris',
                'last_name': 'Johnson',
              };

              final result = Proprietor.fromJson(json);

              expect(
                result.address,
                isNull,
              );

              expect(
                result.dateOfBirth,
                isNull,
              );

              expect(
                result.emailAddress,
                'chris@example.com',
              );

              expect(
                result.firstName,
                'Chris',
              );

              expect(
                result.lastName,
                'Johnson',
              );

              expect(
                result.phoneNumber,
                isNull,
              );
            },
          );

          test(
            'should return model with null dateOfBirth from json with an empty string',
            () {
              final json = {
                'address': {
                  'line_1': '87 Doveys Close',
                  'postcode': 'BH24 4BP',
                },
                'date_of_birth': '',
                'email_address': 'chris@example.com',
                'first_name': 'Chris',
                'last_name': 'Johnson',
                'phone_number': '07742628216',
              };

              final result = Proprietor.fromJson(json);

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
              final model = Proprietor(
                address: ProprietorAddress(
                  line1: '87 Doveys Close',
                  postcode: 'BH24 4BP',
                ),
                dateOfBirth: DateTime.parse('1966-01-01'),
                emailAddress: 'chris@example.com',
                firstName: 'Chris',
                lastName: 'Johnson',
                phoneNumber: '07742628216',
              );

              final result = model.toJson();

              expect(
                result['address'],
                isA<Map<String, dynamic>>(),
              );

              expect(
                result['date_of_birth'],
                '1966-01-01T00:00:00.000',
              );

              expect(
                result['email_address'],
                'chris@example.com',
              );

              expect(
                result['first_name'],
                'Chris',
              );

              expect(
                result['last_name'],
                'Johnson',
              );

              expect(
                result['phone_number'],
                '07742628216',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Proprietor(
                emailAddress: 'chris@example.com',
                firstName: 'Chris',
                lastName: 'Johnson',
              );

              final result = model.toJson();

              expect(
                result['address'],
                isNull,
              );

              expect(
                result['date_of_birth'],
                isNull,
              );

              expect(
                result['email_address'],
                'chris@example.com',
              );

              expect(
                result['first_name'],
                'Chris',
              );

              expect(
                result['last_name'],
                'Johnson',
              );

              expect(
                result['phone_number'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
