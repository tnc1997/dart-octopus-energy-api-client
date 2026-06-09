import 'package:octopus_energy_api_client/v1.dart';
import 'package:test/test.dart';

void main() {
  group(
    'OctopusEnergyApiClient',
    () {
      group(
        'accounts',
        () {
          test(
            'returns an AccountsService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.accounts,
                isA<AccountsService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.accounts,
                same(client.accounts),
              );
            },
          );
        },
      );

      group(
        'electricityMeterPoints',
        () {
          test(
            'returns an ElectricityMeterPointsService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.electricityMeterPoints,
                isA<ElectricityMeterPointsService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.electricityMeterPoints,
                same(client.electricityMeterPoints),
              );
            },
          );
        },
      );

      group(
        'gasMeterPoints',
        () {
          test(
            'returns a GasMeterPointsService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.gasMeterPoints,
                isA<GasMeterPointsService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.gasMeterPoints,
                same(client.gasMeterPoints),
              );
            },
          );
        },
      );

      group(
        'industry',
        () {
          test(
            'returns an IndustryService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.industry,
                isA<IndustryService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.industry,
                same(client.industry),
              );
            },
          );
        },
      );

      group(
        'ivrSupport',
        () {
          test(
            'returns an IvrSupportService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.ivrSupport,
                isA<IvrSupportService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.ivrSupport,
                same(client.ivrSupport),
              );
            },
          );
        },
      );

      group(
        'products',
        () {
          test(
            'returns a ProductsService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.products,
                isA<ProductsService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.products,
                same(client.products),
              );
            },
          );
        },
      );

      group(
        'quotes',
        () {
          test(
            'returns a QuotesService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.quotes,
                isA<QuotesService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.quotes,
                same(client.quotes),
              );
            },
          );
        },
      );

      group(
        'voice',
        () {
          test(
            'returns a VoiceService',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.voice,
                isA<VoiceService>(),
              );
            },
          );

          test(
            'returns the same instance on subsequent calls',
            () {
              final client = OctopusEnergyApiClient();

              expect(
                client.voice,
                same(client.voice),
              );
            },
          );
        },
      );
    },
  );
}
