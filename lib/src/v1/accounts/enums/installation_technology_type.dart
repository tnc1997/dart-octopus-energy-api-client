/// The technology type for the installation.
///
/// If there are multiple technologies at one site then provide multiple
/// installations.
enum InstallationTechnologyType {
  ad,
  bioDieselOil,
  bioDieselOilChp,
  bioGasAd,
  bioGasAdChp,
  bioGasLandfill,
  bioMassWood,
  bioMassWoodChp,
  bioMethane,
  chp,
  geothermalAirsource,
  geothermalGroundsource,
  geothermalWatersource,
  hydro,
  hydroDam,
  hydroDamDrinkingWater,
  hydroPumpedStorage,
  hydroRunOfRiver,
  hydroSewerageTreatment,
  hydroTidal,
  hydroWaterTreatment,
  hydroWave,
  lkUpGeneratorTypesCombined,
  solar,
  solarPvBuilding,
  solarPvFieldMultiUse,
  solarPvFieldSingleUse,
  solarThermal,
  wind,
  windOffshore,
  windOnshore;

  factory InstallationTechnologyType.fromJson(
    String json,
  ) {
    switch (json) {
      case 'AD':
        return InstallationTechnologyType.ad;
      case 'Bio Diesel (Oil)':
        return InstallationTechnologyType.bioDieselOil;
      case 'Bio Diesel (Oil) CHP':
        return InstallationTechnologyType.bioDieselOilChp;
      case 'Bio Gas (AD)':
        return InstallationTechnologyType.bioGasAd;
      case 'Bio Gas (AD) CHP':
        return InstallationTechnologyType.bioGasAdChp;
      case 'Bio Gas (Landfill)':
        return InstallationTechnologyType.bioGasLandfill;
      case 'Bio Mass (Wood)':
        return InstallationTechnologyType.bioMassWood;
      case 'Bio Mass (Wood) CHP':
        return InstallationTechnologyType.bioMassWoodChp;
      case 'Bio Methane':
        return InstallationTechnologyType.bioMethane;
      case 'CHP':
        return InstallationTechnologyType.chp;
      case 'Geothermal (Airsource)':
        return InstallationTechnologyType.geothermalAirsource;
      case 'Geothermal (Groundsource)':
        return InstallationTechnologyType.geothermalGroundsource;
      case 'Geothermal (Watersource)':
        return InstallationTechnologyType.geothermalWatersource;
      case 'Hydro':
        return InstallationTechnologyType.hydro;
      case 'Hydro (Dam - Drinking Water)':
        return InstallationTechnologyType.hydroDamDrinkingWater;
      case 'Hydro (Dam)':
        return InstallationTechnologyType.hydroDam;
      case 'Hydro (Pumped Storage)':
        return InstallationTechnologyType.hydroPumpedStorage;
      case 'Hydro (Run-of-River)':
        return InstallationTechnologyType.hydroRunOfRiver;
      case 'Hydro (Sewerage Treatment)':
        return InstallationTechnologyType.hydroSewerageTreatment;
      case 'Hydro (Tidal)':
        return InstallationTechnologyType.hydroTidal;
      case 'Hydro (Water Treatment)':
        return InstallationTechnologyType.hydroWaterTreatment;
      case 'Hydro (Wave)':
        return InstallationTechnologyType.hydroWave;
      case 'LkUp_Generator_TypesCombined':
        return InstallationTechnologyType.lkUpGeneratorTypesCombined;
      case 'Solar':
        return InstallationTechnologyType.solar;
      case 'Solar PV (Building)':
        return InstallationTechnologyType.solarPvBuilding;
      case 'Solar PV (Field - Multi Use)':
        return InstallationTechnologyType.solarPvFieldMultiUse;
      case 'Solar PV (Field - Single Use)':
        return InstallationTechnologyType.solarPvFieldSingleUse;
      case 'Solar Thermal':
        return InstallationTechnologyType.solarThermal;
      case 'Wind':
        return InstallationTechnologyType.wind;
      case 'Wind (Offshore)':
        return InstallationTechnologyType.windOffshore;
      case 'Wind (Onshore)':
        return InstallationTechnologyType.windOnshore;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case InstallationTechnologyType.ad:
        return 'AD';
      case InstallationTechnologyType.bioDieselOil:
        return 'Bio Diesel (Oil)';
      case InstallationTechnologyType.bioDieselOilChp:
        return 'Bio Diesel (Oil) CHP';
      case InstallationTechnologyType.bioGasAd:
        return 'Bio Gas (AD)';
      case InstallationTechnologyType.bioGasAdChp:
        return 'Bio Gas (AD) CHP';
      case InstallationTechnologyType.bioGasLandfill:
        return 'Bio Gas (Landfill)';
      case InstallationTechnologyType.bioMassWood:
        return 'Bio Mass (Wood)';
      case InstallationTechnologyType.bioMassWoodChp:
        return 'Bio Mass (Wood) CHP';
      case InstallationTechnologyType.bioMethane:
        return 'Bio Methane';
      case InstallationTechnologyType.chp:
        return 'CHP';
      case InstallationTechnologyType.geothermalAirsource:
        return 'Geothermal (Airsource)';
      case InstallationTechnologyType.geothermalGroundsource:
        return 'Geothermal (Groundsource)';
      case InstallationTechnologyType.geothermalWatersource:
        return 'Geothermal (Watersource)';
      case InstallationTechnologyType.hydro:
        return 'Hydro';
      case InstallationTechnologyType.hydroDamDrinkingWater:
        return 'Hydro (Dam - Drinking Water)';
      case InstallationTechnologyType.hydroDam:
        return 'Hydro (Dam)';
      case InstallationTechnologyType.hydroPumpedStorage:
        return 'Hydro (Pumped Storage)';
      case InstallationTechnologyType.hydroRunOfRiver:
        return 'Hydro (Run-of-River)';
      case InstallationTechnologyType.hydroSewerageTreatment:
        return 'Hydro (Sewerage Treatment)';
      case InstallationTechnologyType.hydroTidal:
        return 'Hydro (Tidal)';
      case InstallationTechnologyType.hydroWaterTreatment:
        return 'Hydro (Water Treatment)';
      case InstallationTechnologyType.hydroWave:
        return 'Hydro (Wave)';
      case InstallationTechnologyType.lkUpGeneratorTypesCombined:
        return 'LkUp_Generator_TypesCombined';
      case InstallationTechnologyType.solar:
        return 'Solar';
      case InstallationTechnologyType.solarPvBuilding:
        return 'Solar PV (Building)';
      case InstallationTechnologyType.solarPvFieldMultiUse:
        return 'Solar PV (Field - Multi Use)';
      case InstallationTechnologyType.solarPvFieldSingleUse:
        return 'Solar PV (Field - Single Use)';
      case InstallationTechnologyType.solarThermal:
        return 'Solar Thermal';
      case InstallationTechnologyType.wind:
        return 'Wind';
      case InstallationTechnologyType.windOffshore:
        return 'Wind (Offshore)';
      case InstallationTechnologyType.windOnshore:
        return 'Wind (Onshore)';
    }
  }
}
