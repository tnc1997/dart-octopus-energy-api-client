import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'CreditScoreData',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'risk_bracket': 'LOW',
                'score': 700,
              };

              final result = CreditScoreData.fromJson(json);

              expect(
                result.riskBracket,
                CreditRiskBracket.low,
              );

              expect(
                result.score,
                700,
              );
            },
          );

          test(
            'should return model from json with null values',
            () {
              final json = <String, dynamic>{};

              final result = CreditScoreData.fromJson(json);

              expect(
                result.riskBracket,
                isNull,
              );

              expect(
                result.score,
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
              final model = CreditScoreData(
                riskBracket: CreditRiskBracket.low,
                score: 700,
              );

              final result = model.toJson();

              expect(
                result['risk_bracket'],
                'LOW',
              );

              expect(
                result['score'],
                700,
              );
            },
          );

          test(
            'should serialize model with null values to json',
            () {
              final model = CreditScoreData();

              final result = model.toJson();

              expect(
                result['risk_bracket'],
                isNull,
              );

              expect(
                result['score'],
                isNull,
              );
            },
          );
        },
      );
    },
  );
}
