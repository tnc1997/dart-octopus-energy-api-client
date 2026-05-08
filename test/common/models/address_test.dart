import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
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
                'address_line_1': '742 Evergreen Terrace',
                'address_line_2': 'Springfield Address Line 2',
                'address_line_3': 'Springfield Address Line 3',
                'county': 'Springfield County',
                'delivery_point_identifier': '1234567890',
                'postcode': 'AB1 2CD',
                'town': 'Springfield Town',
              };

              final result = Address.fromJson(json);

              expect(
                result.addressLine1,
                json['address_line_1'],
              );

              expect(
                result.addressLine2,
                json['address_line_2'],
              );

              expect(
                result.addressLine3,
                json['address_line_3'],
              );

              expect(
                result.county,
                json['county'],
              );

              expect(
                result.deliveryPointIdentifier,
                json['delivery_point_identifier'],
              );

              expect(
                result.postcode,
                json['postcode'],
              );

              expect(
                result.town,
                json['town'],
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'address_line_1': '742 Evergreen Terrace',
                'postcode': 'AB1 2CD',
              };

              final result = Address.fromJson(json);

              expect(
                result.addressLine1,
                json['address_line_1'],
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
                json['postcode'],
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
                addressLine1: '742 Evergreen Terrace',
                addressLine2: 'Springfield Address Line 2',
                addressLine3: 'Springfield Address Line 3',
                county: 'Springfield County',
                deliveryPointIdentifier: '1234567890',
                postcode: 'AB1 2CD',
                town: 'Springfield Town',
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                model.addressLine1,
              );

              expect(
                result['address_line_2'],
                model.addressLine2,
              );

              expect(
                result['address_line_3'],
                model.addressLine3,
              );

              expect(
                result['county'],
                model.county,
              );

              expect(
                result['delivery_point_identifier'],
                model.deliveryPointIdentifier,
              );

              expect(
                result['postcode'],
                model.postcode,
              );

              expect(
                result['town'],
                model.town,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = Address(
                addressLine1: '742 Evergreen Terrace',
                postcode: 'AB1 2CD',
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                model.addressLine1,
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
                model.postcode,
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
