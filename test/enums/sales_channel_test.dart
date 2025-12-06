import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

const _cases = {
  SalesChannel.acquisition: 'ACQUISITION',
  SalesChannel.aggregator: 'AGGREGATOR',
  SalesChannel.broker: 'BROKER',
  SalesChannel.currentAccount: 'CURRENT_ACCOUNT',
  SalesChannel.debtCollectionAgency: 'DEBT_COLLECTION_AGENCY',
  SalesChannel.digiTelesales: 'DIGI_TELESALES',
  SalesChannel.direct: 'DIRECT',
  SalesChannel.events: 'EVENTS',
  SalesChannel.fieldSales: 'FIELD_SALES',
  SalesChannel.giftOfKit: 'GIFT_OF_KIT',
  SalesChannel.highReferrer: 'HIGH_REFERRER',
  SalesChannel.landlord: 'LANDLORD',
  SalesChannel.moveIn: 'MOVE_IN',
  SalesChannel.newTenant: 'NEW_TENANT',
  SalesChannel.octopusTrustedPartners: 'OCTOPUS_TRUSTED_PARTNERS',
  SalesChannel.parentPower: 'PARENT_POWER',
  SalesChannel.partnerships: 'PARTNERSHIPS',
  SalesChannel.peoplePower: 'PEOPLE_POWER',
  SalesChannel.priceComparison: 'PRICE_COMPARISON',
  SalesChannel.supplierOfLastResort: 'SUPPLIER_OF_LAST_RESORT',
  SalesChannel.telesales: 'TELESALES',
  SalesChannel.workplacePopUp: 'WORKPLACE_POP_UP',
  SalesChannel.worksWithOctopus: 'WORKS_WITH_OCTOPUS',
};

void main() {
  group(
    'SalesChannel',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  SalesChannel.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => SalesChannel.fromJson(''),
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
