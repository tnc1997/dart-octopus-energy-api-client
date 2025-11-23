enum SmartOnboardingProductType {
  agile,
  airaZero,
  cosyOctopus,
  goGreen,
  intelligentOctopus,
  octopusFlux,
  octopusGo,
  teslaImport,
  tracker;

  factory SmartOnboardingProductType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'AGILE':
        return SmartOnboardingProductType.agile;
      case 'AIRA_ZERO':
        return SmartOnboardingProductType.airaZero;
      case 'COSY_OCTOPUS':
        return SmartOnboardingProductType.cosyOctopus;
      case 'GO_GREEN':
        return SmartOnboardingProductType.goGreen;
      case 'INTELLIGENT_OCTOPUS':
        return SmartOnboardingProductType.intelligentOctopus;
      case 'OCTOPUS_FLUX':
        return SmartOnboardingProductType.octopusFlux;
      case 'OCTOPUS_GO':
        return SmartOnboardingProductType.octopusGo;
      case 'TESLA_IMPORT':
        return SmartOnboardingProductType.teslaImport;
      case 'TRACKER':
        return SmartOnboardingProductType.tracker;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case SmartOnboardingProductType.agile:
        return 'AGILE';
      case SmartOnboardingProductType.airaZero:
        return 'AIRA_ZERO';
      case SmartOnboardingProductType.cosyOctopus:
        return 'COSY_OCTOPUS';
      case SmartOnboardingProductType.goGreen:
        return 'GO_GREEN';
      case SmartOnboardingProductType.intelligentOctopus:
        return 'INTELLIGENT_OCTOPUS';
      case SmartOnboardingProductType.octopusFlux:
        return 'OCTOPUS_FLUX';
      case SmartOnboardingProductType.octopusGo:
        return 'OCTOPUS_GO';
      case SmartOnboardingProductType.teslaImport:
        return 'TESLA_IMPORT';
      case SmartOnboardingProductType.tracker:
        return 'TRACKER';
    }
  }
}
