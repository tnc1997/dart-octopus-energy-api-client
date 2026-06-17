import 'package:octopus_energy_api_client/v1.dart';
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
                'address_line_1': '87 Doveys Close',
                'address_line_2': 'Address Line 2',
                'address_line_3': 'Address Line 3',
                'county': 'Hampshire',
                'electricity_meter_points': [
                  {
                    'mpan': '2000024512368',
                  }
                ],
                'gas_meter_points': [
                  {
                    'mprn': '3016362107',
                  }
                ],
                'id': 12345,
                'moved_in_at': '1970-01-01T00:00:00.000Z',
                'moved_out_at': '1970-12-31T23:59:59.000Z',
                'postcode': 'BH24 4BP',
                'town': 'Ringwood',
              };

              final result = AccountProperty.fromJson(json);

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
                result.electricityMeterPoints,
                isA<List<AccountElectricityMeterPoint>>().having(
                  (electricityMeterPoints) => electricityMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result.gasMeterPoints,
                isA<List<AccountGasMeterPoint>>().having(
                  (gasMeterPoints) => gasMeterPoints.length,
                  'length',
                  1,
                ),
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

          test(
            'should return model with null movedOutAt from json with an empty string',
            () {
              final json = {
                'address_line_1': '87 Doveys Close',
                'address_line_2': 'Address Line 2',
                'address_line_3': 'Address Line 3',
                'county': 'Hampshire',
                'electricity_meter_points': [
                  {
                    'mpan': '2000024512368',
                  }
                ],
                'gas_meter_points': [
                  {
                    'mprn': '3016362107',
                  }
                ],
                'id': 12345,
                'moved_in_at': '1970-01-01T00:00:00.000Z',
                'moved_out_at': '',
                'postcode': 'BH24 4BP',
                'town': 'Ringwood',
              };

              final result = AccountProperty.fromJson(json);

              expect(
                result.movedOutAt,
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
                addressLine1: '87 Doveys Close',
                addressLine2: 'Address Line 2',
                addressLine3: 'Address Line 3',
                county: 'Hampshire',
                electricityMeterPoints: [
                  AccountElectricityMeterPoint(
                    mpan: '2000024512368',
                  ),
                ],
                gasMeterPoints: [
                  AccountGasMeterPoint(
                    mprn: '3016362107',
                  ),
                ],
                id: 12345,
                movedInAt: DateTime.parse('1970-01-01T00:00:00.000Z'),
                movedOutAt: DateTime.parse('1970-12-31T23:59:59.000Z'),
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
                result['electricity_meter_points'],
                isA<List<Map<String, dynamic>>>().having(
                  (electricityMeterPoints) => electricityMeterPoints.length,
                  'length',
                  1,
                ),
              );

              expect(
                result['gas_meter_points'],
                isA<List<Map<String, dynamic>>>().having(
                  (gasMeterPoints) => gasMeterPoints.length,
                  'length',
                  1,
                ),
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
