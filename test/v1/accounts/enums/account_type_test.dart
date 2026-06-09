import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  AccountType.anonymised: 'ANONYMISED',
  AccountType.business: 'BUSINESS',
  AccountType.businessOccupier: 'BUSINESS OCCUPIER',
  AccountType.businessThirdPartyBilled: 'BUSINESS THIRD PARTY BILLED',
  AccountType.businessVacant: 'BUSINESS VACANT',
  AccountType.domestic: 'DOMESTIC',
  AccountType.domesticThirdPartyBilled: 'DOMESTIC THIRD PARTY BILLED',
  AccountType.domesticVacant: 'DOMESTIC VACANT',
  AccountType.managed: 'MANAGED',
  AccountType.occupier: 'OCCUPIER',
  AccountType.portfolioLead: 'PORTFOLIO LEAD',
  AccountType.supplyPoint: 'SUPPLY POINT',
  AccountType.system: 'SYSTEM',
};

void main() {
  group(
    'AccountType',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  AccountType.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => AccountType.fromJson(''),
                throwsA(isA<ArgumentError>()),
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should map the enum value to a json string',
            () {
              for (final entry in _cases.entries) {
                expect(
                  entry.key.toJson(),
                  entry.value,
                );
              }
            },
          );
        },
      );
    },
  );
}
