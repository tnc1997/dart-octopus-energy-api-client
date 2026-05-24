import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AgreementsCreated',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'account_number': 'A-12345678',
                'agreements': [
                  {
                    'mpxn': '1234567890',
                    'tariff_code': 'G-1R-VAR-70-01-01-A',
                    'valid_from_date': '1970-01-01T00:00:00.000Z',
                  }
                ],
              };

              final result = AgreementsCreated.fromJson(json);

              expect(
                result.accountNumber,
                'A-12345678',
              );

              expect(
                result.agreements,
                hasLength(1),
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
              final model = AgreementsCreated(
                accountNumber: 'A-12345678',
                agreements: [
                  Agreement(
                    mpxn: '1234567890',
                    tariffCode: 'G-1R-VAR-70-01-01-A',
                    validFromDate: DateTime.parse('1970-01-01T00:00:00.000Z'),
                  ),
                ],
              );

              final result = model.toJson();

              expect(
                result['account_number'],
                'A-12345678',
              );

              expect(
                result['agreements'],
                hasLength(1),
              );
            },
          );
        },
      );
    },
  );
}
