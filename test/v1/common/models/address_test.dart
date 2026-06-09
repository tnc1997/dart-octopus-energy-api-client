import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Address',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'address_line_1': '87 Doveys Close',
                'address_line_2': 'Address Line 2',
                'address_line_3': 'Address Line 3',
                'county': 'Hampshire',
                'delivery_point_identifier': '1234567890',
                'postcode': 'BH24 4BP',
                'town': 'Ringwood',
              };

              final result = Address.fromJson(json);

              expect(
                result.addressLine1,
                '87 Doveys Close',
              );

              expect(
                result.addressLine2,
                'Address Line 2',
              );

              expect(
                result.addressLine3,
                'Address Line 3',
              );

              expect(
                result.county,
                'Hampshire',
              );

              expect(
                result.deliveryPointIdentifier,
                '1234567890',
              );

              expect(
                result.postcode,
                'BH24 4BP',
              );

              expect(
                result.town,
                'Ringwood',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'address_line_1': '87 Doveys Close',
                'postcode': 'BH24 4BP',
              };

              final result = Address.fromJson(json);

              expect(
                result.addressLine1,
                '87 Doveys Close',
              );

              expect(
                result.addressLine2,
                isNull,
              );

              expect(
                result.addressLine3,
                isNull,
              );

              expect(
                result.county,
                isNull,
              );

              expect(
                result.deliveryPointIdentifier,
                isNull,
              );

              expect(
                result.postcode,
                'BH24 4BP',
              );

              expect(
                result.town,
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
              final model = Address(
                addressLine1: '87 Doveys Close',
                addressLine2: 'Address Line 2',
                addressLine3: 'Address Line 3',
                county: 'Hampshire',
                deliveryPointIdentifier: '1234567890',
                postcode: 'BH24 4BP',
                town: 'Ringwood',
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                '87 Doveys Close',
              );

              expect(
                result['address_line_2'],
                'Address Line 2',
              );

              expect(
                result['address_line_3'],
                'Address Line 3',
              );

              expect(
                result['county'],
                'Hampshire',
              );

              expect(
                result['delivery_point_identifier'],
                '1234567890',
              );

              expect(
                result['postcode'],
                'BH24 4BP',
              );

              expect(
                result['town'],
                'Ringwood',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Address(
                addressLine1: '87 Doveys Close',
                postcode: 'BH24 4BP',
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                '87 Doveys Close',
              );

              expect(
                result['address_line_2'],
                isNull,
              );

              expect(
                result['address_line_3'],
                isNull,
              );

              expect(
                result['county'],
                isNull,
              );

              expect(
                result['delivery_point_identifier'],
                isNull,
              );

              expect(
                result['postcode'],
                'BH24 4BP',
              );

              expect(
                result['town'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
