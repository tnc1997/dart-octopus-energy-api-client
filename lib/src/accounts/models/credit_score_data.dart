import '../enums/credit_risk_bracket.dart';

class CreditScoreData {
  CreditRiskBracket? riskBracket;
  int? score;

  CreditScoreData({
    this.riskBracket,
    this.score,
  });

  factory CreditScoreData.fromJson(
    Map<String, dynamic> json,
  ) {
    return CreditScoreData(
      riskBracket: json['risk_bracket'] != null
          ? CreditRiskBracket.fromJson(json['risk_bracket'] as String)
          : null,
      score: (json['score'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'risk_bracket': riskBracket?.toJson(),
      'score': score,
    };
  }
}
