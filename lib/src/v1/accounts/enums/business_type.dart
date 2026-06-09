enum BusinessType {
  charity,
  government,
  limited,
  partnership,
  soleTrader;

  factory BusinessType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'CHARITY':
        return BusinessType.charity;
      case 'GOVERNMENT':
        return BusinessType.government;
      case 'LIMITED':
        return BusinessType.limited;
      case 'PARTNERSHIP':
        return BusinessType.partnership;
      case 'SOLE_TRADER':
        return BusinessType.soleTrader;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case BusinessType.charity:
        return 'CHARITY';
      case BusinessType.government:
        return 'GOVERNMENT';
      case BusinessType.limited:
        return 'LIMITED';
      case BusinessType.partnership:
        return 'PARTNERSHIP';
      case BusinessType.soleTrader:
        return 'SOLE_TRADER';
    }
  }
}
