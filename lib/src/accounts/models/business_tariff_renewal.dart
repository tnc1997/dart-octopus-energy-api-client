import 'business_tariff_renewal_agreement.dart';

class BusinessTariffRenewal {
  List<BusinessTariffRenewalAgreement> agreements;

  BusinessTariffRenewal({
    required this.agreements,
  });

  factory BusinessTariffRenewal.fromJson(
    Map<String, dynamic> json,
  ) {
    return BusinessTariffRenewal(
      agreements: (json['agreements'] as List<dynamic>)
          .map((e) => BusinessTariffRenewalAgreement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'agreements': agreements.map((e) => e.toJson()).toList(),
    };
  }
}
