enum AccountType {
  anonymised,
  business,
  businessOccupier,
  businessThirdPartyBilled,
  businessVacant,
  domestic,
  domesticThirdPartyBilled,
  domesticVacant,
  managed,
  occupier,
  portfolioLead,
  supplyPoint,
  system;

  factory AccountType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'ANONYMISED':
        return AccountType.anonymised;
      case 'BUSINESS':
        return AccountType.business;
      case 'BUSINESS OCCUPIER':
        return AccountType.businessOccupier;
      case 'BUSINESS THIRD PARTY BILLED':
        return AccountType.businessThirdPartyBilled;
      case 'BUSINESS VACANT':
        return AccountType.businessVacant;
      case 'DOMESTIC':
        return AccountType.domestic;
      case 'DOMESTIC THIRD PARTY BILLED':
        return AccountType.domesticThirdPartyBilled;
      case 'DOMESTIC VACANT':
        return AccountType.domesticVacant;
      case 'MANAGED':
        return AccountType.managed;
      case 'OCCUPIER':
        return AccountType.occupier;
      case 'PORTFOLIO LEAD':
        return AccountType.portfolioLead;
      case 'SUPPLY POINT':
        return AccountType.supplyPoint;
      case 'SYSTEM':
        return AccountType.system;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case AccountType.anonymised:
        return 'ANONYMISED';
      case AccountType.business:
        return 'BUSINESS';
      case AccountType.businessOccupier:
        return 'BUSINESS OCCUPIER';
      case AccountType.businessThirdPartyBilled:
        return 'BUSINESS THIRD PARTY BILLED';
      case AccountType.businessVacant:
        return 'BUSINESS VACANT';
      case AccountType.domestic:
        return 'DOMESTIC';
      case AccountType.domesticThirdPartyBilled:
        return 'DOMESTIC THIRD PARTY BILLED';
      case AccountType.domesticVacant:
        return 'DOMESTIC VACANT';
      case AccountType.managed:
        return 'MANAGED';
      case AccountType.occupier:
        return 'OCCUPIER';
      case AccountType.portfolioLead:
        return 'PORTFOLIO LEAD';
      case AccountType.supplyPoint:
        return 'SUPPLY POINT';
      case AccountType.system:
        return 'SYSTEM';
    }
  }
}
