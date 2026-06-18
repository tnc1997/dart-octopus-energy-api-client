enum SalesChannel {
  /// Acquisition.
  acquisition,

  /// Aggregator.
  aggregator,

  /// Broker.
  broker,

  /// Current Account.
  currentAccount,

  /// Debt collection agency.
  debtCollectionAgency,

  /// Digital telesales.
  digiTelesales,

  /// Direct.
  direct,

  /// Events.
  events,

  /// Field sales.
  fieldSales,

  /// Gift of kit.
  giftOfKit,

  /// High referrer.
  highReferrer,

  /// Landlord.
  landlord,

  /// Move in.
  moveIn,

  /// New tenant.
  newTenant,

  /// Octopus Trusted Partners.
  octopusTrustedPartners,

  /// Parent power.
  parentPower,

  /// Partnerships.
  partnerships,

  /// People power.
  peoplePower,

  /// Price comparison.
  priceComparison,

  /// Supplier of last resort.
  supplierOfLastResort,

  /// Telesales.
  telesales,

  /// Workplace pop-up.
  workplacePopUp,

  /// Works with octopus.
  worksWithOctopus;

  factory SalesChannel.fromJson(
    String json,
  ) {
    switch (json) {
      case 'ACQUISITION':
        return SalesChannel.acquisition;
      case 'AGGREGATOR':
        return SalesChannel.aggregator;
      case 'BROKER':
        return SalesChannel.broker;
      case 'CURRENT_ACCOUNT':
        return SalesChannel.currentAccount;
      case 'DEBT_COLLECTION_AGENCY':
        return SalesChannel.debtCollectionAgency;
      case 'DIGI_TELESALES':
        return SalesChannel.digiTelesales;
      case 'DIRECT':
        return SalesChannel.direct;
      case 'EVENTS':
        return SalesChannel.events;
      case 'FIELD_SALES':
        return SalesChannel.fieldSales;
      case 'GIFT_OF_KIT':
        return SalesChannel.giftOfKit;
      case 'HIGH_REFERRER':
        return SalesChannel.highReferrer;
      case 'LANDLORD':
        return SalesChannel.landlord;
      case 'MOVE_IN':
        return SalesChannel.moveIn;
      case 'NEW_TENANT':
        return SalesChannel.newTenant;
      case 'OCTOPUS_TRUSTED_PARTNERS':
        return SalesChannel.octopusTrustedPartners;
      case 'PARENT_POWER':
        return SalesChannel.parentPower;
      case 'PARTNERSHIPS':
        return SalesChannel.partnerships;
      case 'PEOPLE_POWER':
        return SalesChannel.peoplePower;
      case 'PRICE_COMPARISON':
        return SalesChannel.priceComparison;
      case 'SUPPLIER_OF_LAST_RESORT':
        return SalesChannel.supplierOfLastResort;
      case 'TELESALES':
        return SalesChannel.telesales;
      case 'WORKPLACE_POP_UP':
        return SalesChannel.workplacePopUp;
      case 'WORKS_WITH_OCTOPUS':
        return SalesChannel.worksWithOctopus;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case SalesChannel.acquisition:
        return 'ACQUISITION';
      case SalesChannel.aggregator:
        return 'AGGREGATOR';
      case SalesChannel.broker:
        return 'BROKER';
      case SalesChannel.currentAccount:
        return 'CURRENT_ACCOUNT';
      case SalesChannel.debtCollectionAgency:
        return 'DEBT_COLLECTION_AGENCY';
      case SalesChannel.digiTelesales:
        return 'DIGI_TELESALES';
      case SalesChannel.direct:
        return 'DIRECT';
      case SalesChannel.events:
        return 'EVENTS';
      case SalesChannel.fieldSales:
        return 'FIELD_SALES';
      case SalesChannel.giftOfKit:
        return 'GIFT_OF_KIT';
      case SalesChannel.highReferrer:
        return 'HIGH_REFERRER';
      case SalesChannel.landlord:
        return 'LANDLORD';
      case SalesChannel.moveIn:
        return 'MOVE_IN';
      case SalesChannel.newTenant:
        return 'NEW_TENANT';
      case SalesChannel.octopusTrustedPartners:
        return 'OCTOPUS_TRUSTED_PARTNERS';
      case SalesChannel.parentPower:
        return 'PARENT_POWER';
      case SalesChannel.partnerships:
        return 'PARTNERSHIPS';
      case SalesChannel.peoplePower:
        return 'PEOPLE_POWER';
      case SalesChannel.priceComparison:
        return 'PRICE_COMPARISON';
      case SalesChannel.supplierOfLastResort:
        return 'SUPPLIER_OF_LAST_RESORT';
      case SalesChannel.telesales:
        return 'TELESALES';
      case SalesChannel.workplacePopUp:
        return 'WORKPLACE_POP_UP';
      case SalesChannel.worksWithOctopus:
        return 'WORKS_WITH_OCTOPUS';
    }
  }
}
