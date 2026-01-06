import 'business_tariff_renewal_bespoke_tariff_rate.dart';
import 'business_tariff_renewal_commission.dart';

class BusinessTariffRenewalAgreement {
  List<BusinessTariffRenewalBespokeTariffRate>? bespokeTariffRates;
  BusinessTariffRenewalCommission? commission;
  String mpxn;
  String tariffCode;
  DateTime validFromDate;
  DateTime? validToDate;

  BusinessTariffRenewalAgreement({
    this.bespokeTariffRates,
    this.commission,
    required this.mpxn,
    required this.tariffCode,
    required this.validFromDate,
    this.validToDate,
  });

  factory BusinessTariffRenewalAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    return BusinessTariffRenewalAgreement(
      bespokeTariffRates: (json['bespoke_tariff_rates'] as List<dynamic>?)
          ?.map((e) => BusinessTariffRenewalBespokeTariffRate.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      commission: json['commission'] != null
          ? BusinessTariffRenewalCommission.fromJson(
              json['commission'] as Map<String, dynamic>)
          : null,
      mpxn: json['mpxn'] as String,
      tariffCode: json['tariff_code'] as String,
      validFromDate: DateTime.parse(json['valid_from_date'] as String),
      validToDate: json['valid_to_date'] != null
          ? DateTime.parse(json['valid_to_date'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bespoke_tariff_rates':
          bespokeTariffRates!.map((e) => e.toJson()).toList(),
      'commission': commission!.toJson(),
      'mpxn': mpxn,
      'tariff_code': tariffCode,
      'valid_from_date': validFromDate.toIso8601String(),
      'valid_to_date': validToDate?.toIso8601String(),
    };
  }
}
