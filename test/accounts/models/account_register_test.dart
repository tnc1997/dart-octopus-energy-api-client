import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'AccountRegister',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'identifier': '01',
                'is_settlement_register': true,
                'rate': '0.35',
              };

              final result = AccountRegister.fromJson(json);

              expect(
                result.identifier,
                '01',
              );

              expect(
                result.isSettlementRegister,
                isTrue,
              );

              expect(
                result.rate,
                '0.35',
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = {
                'identifier': '01',
              };

              final result = AccountRegister.fromJson(json);

              expect(
                result.identifier,
                '01',
              );

              expect(
                result.isSettlementRegister,
                isNull,
              );

              expect(
                result.rate,
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
              final model = AccountRegister(
                identifier: '01',
                isSettlementRegister: true,
                rate: '0.35',
              );

              final result = model.toJson();

              expect(
                result['identifier'],
                '01',
              );

              expect(
                result['is_settlement_register'],
                isTrue,
              );

              expect(
                result['rate'],
                '0.35',
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = AccountRegister(
                identifier: '01',
              );

              final result = model.toJson();

              expect(
                result['identifier'],
                '01',
              );

              expect(
                result['is_settlement_register'],
                isNull,
              );

              expect(
                result['rate'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
