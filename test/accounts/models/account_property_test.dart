import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountProperty',
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
                'electricity_meter_points': [
                  {
                    'mpan': '1234567890123',
                  }
                ],
                'gas_meter_points': [
                  {
                    'mprn': '1234567890',
                  }
                ],
                'id': 12345,
                'moved_in_at': '1970-01-01T00:00:00.000Z',
                'moved_out_at': '1970-12-31T23:59:59.000Z',
                'postcode': 'AB1 2CD',
                'town': 'Springfield Town',
              };

              final result = AccountProperty.fromJson(json);

              expect(
                result.addressLine1,
                '742 Evergreen Terrace',
              );

              expect(
                result.addressLine2,
                'Springfield Address Line 2',
              );

              expect(
                result.addressLine3,
                'Springfield Address Line 3',
              );

              expect(
                result.county,
                'Springfield County',
              );

              expect(
                result.electricityMeterPoints,
                hasLength(1),
              );

              expect(
                result.gasMeterPoints,
                hasLength(1),
              );

              expect(
                result.id,
                12345,
              );

              expect(
                result.movedInAt,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.movedOutAt,
                DateTime.parse('1970-12-31T23:59:59.000Z'),
              );

              expect(
                result.postcode,
                'AB1 2CD',
              );

              expect(
                result.town,
                'Springfield Town',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'id': 12345,
                'moved_in_at': '1970-01-01T00:00:00.000Z',
              };

              final result = AccountProperty.fromJson(json);

              expect(
                result.addressLine1,
                isNull,
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
                result.electricityMeterPoints,
                isNull,
              );

              expect(
                result.gasMeterPoints,
                isNull,
              );

              expect(
                result.id,
                12345,
              );

              expect(
                result.movedInAt,
                DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              expect(
                result.movedOutAt,
                isNull,
              );

              expect(
                result.postcode,
                isNull,
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
              final model = AccountProperty(
                addressLine1: '742 Evergreen Terrace',
                addressLine2: 'Springfield Address Line 2',
                addressLine3: 'Springfield Address Line 3',
                county: 'Springfield County',
                electricityMeterPoints: [
                  AccountElectricityMeterPoint(
                    mpan: '1234567890123',
                  ),
                ],
                gasMeterPoints: [
                  AccountGasMeterPoint(
                    mprn: '1234567890',
                  ),
                ],
                id: 12345,
                movedInAt: DateTime.parse('1970-01-01T00:00:00.000Z'),
                movedOutAt: DateTime.parse('1970-12-31T23:59:59.000Z'),
                postcode: 'AB1 2CD',
                town: 'Springfield Town',
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                '742 Evergreen Terrace',
              );

              expect(
                result['address_line_2'],
                'Springfield Address Line 2',
              );

              expect(
                result['address_line_3'],
                'Springfield Address Line 3',
              );

              expect(
                result['county'],
                'Springfield County',
              );

              expect(
                result['electricity_meter_points'],
                hasLength(1),
              );

              expect(
                result['gas_meter_points'],
                hasLength(1),
              );

              expect(
                result['id'],
                12345,
              );

              expect(
                result['moved_in_at'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['moved_out_at'],
                '1970-12-31T23:59:59.000Z',
              );

              expect(
                result['postcode'],
                'AB1 2CD',
              );

              expect(
                result['town'],
                'Springfield Town',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountProperty(
                id: 12345,
                movedInAt: DateTime.parse('1970-01-01T00:00:00.000Z'),
              );

              final result = model.toJson();

              expect(
                result['address_line_1'],
                isNull,
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
                result['electricity_meter_points'],
                isNull,
              );

              expect(
                result['gas_meter_points'],
                isNull,
              );

              expect(
                result['id'],
                12345,
              );

              expect(
                result['moved_in_at'],
                '1970-01-01T00:00:00.000Z',
              );

              expect(
                result['moved_out_at'],
                isNull,
              );

              expect(
                result['postcode'],
                isNull,
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
