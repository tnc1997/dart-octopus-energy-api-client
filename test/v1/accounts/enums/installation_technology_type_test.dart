import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

const _cases = {
  InstallationTechnologyType.ad: 'AD',
  InstallationTechnologyType.bioDieselOil: 'Bio Diesel (Oil)',
  InstallationTechnologyType.bioDieselOilChp: 'Bio Diesel (Oil) CHP',
  InstallationTechnologyType.bioGasAd: 'Bio Gas (AD)',
  InstallationTechnologyType.bioGasAdChp: 'Bio Gas (AD) CHP',
  InstallationTechnologyType.bioGasLandfill: 'Bio Gas (Landfill)',
  InstallationTechnologyType.bioMassWood: 'Bio Mass (Wood)',
  InstallationTechnologyType.bioMassWoodChp: 'Bio Mass (Wood) CHP',
  InstallationTechnologyType.bioMethane: 'Bio Methane',
  InstallationTechnologyType.chp: 'CHP',
  InstallationTechnologyType.geothermalAirsource: 'Geothermal (Airsource)',
  InstallationTechnologyType.geothermalGroundsource:
      'Geothermal (Groundsource)',
  InstallationTechnologyType.geothermalWatersource: 'Geothermal (Watersource)',
  InstallationTechnologyType.hydro: 'Hydro',
  InstallationTechnologyType.hydroDam: 'Hydro (Dam)',
  InstallationTechnologyType.hydroDamDrinkingWater:
      'Hydro (Dam - Drinking Water)',
  InstallationTechnologyType.hydroPumpedStorage: 'Hydro (Pumped Storage)',
  InstallationTechnologyType.hydroRunOfRiver: 'Hydro (Run-of-River)',
  InstallationTechnologyType.hydroSewerageTreatment:
      'Hydro (Sewerage Treatment)',
  InstallationTechnologyType.hydroTidal: 'Hydro (Tidal)',
  InstallationTechnologyType.hydroWaterTreatment: 'Hydro (Water Treatment)',
  InstallationTechnologyType.hydroWave: 'Hydro (Wave)',
  InstallationTechnologyType.lkUpGeneratorTypesCombined:
      'LkUp_Generator_TypesCombined',
  InstallationTechnologyType.solar: 'Solar',
  InstallationTechnologyType.solarPvBuilding: 'Solar PV (Building)',
  InstallationTechnologyType.solarPvFieldMultiUse:
      'Solar PV (Field - Multi Use)',
  InstallationTechnologyType.solarPvFieldSingleUse:
      'Solar PV (Field - Single Use)',
  InstallationTechnologyType.solarThermal: 'Solar Thermal',
  InstallationTechnologyType.wind: 'Wind',
  InstallationTechnologyType.windOffshore: 'Wind (Offshore)',
  InstallationTechnologyType.windOnshore: 'Wind (Onshore)',
};

void main() {
  group(
    'InstallationTechnologyType',
    () {
      group(
        'fromJson',
        () {
          test(
            'should map the json string to an enum value',
            () {
              for (final entry in _cases.entries) {
                expect(
                  InstallationTechnologyType.fromJson(entry.value),
                  entry.key,
                );
              }
            },
          );

          test(
            'should throw an argument error when the json string is invalid',
            () {
              expect(
                () => InstallationTechnologyType.fromJson(''),
                throwsA(isA<ArgumentError>()),
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should map the enum value to a json string',
            () {
              for (final entry in _cases.entries) {
                expect(
                  entry.key.toJson(),
                  entry.value,
                );
              }
            },
          );
        },
      );
    },
  );
}
