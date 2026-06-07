import 'package:octopus_energy_api_client/octopus_energy_api_client.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Link',
    () {
      group(
        'fromJson',
        () {
          test(
            'should return model from json',
            () {
              final json = {
                'href': 'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                'method': 'GET',
                'rel': 'self',
              };

              final result = Link.fromJson(json);

              expect(
                result.href,
                'https://api.octopus.energy/v1/products/VAR-17-01-11/',
              );

              expect(
                result.method,
                'GET',
              );

              expect(
                result.rel,
                'self',
              );
            },
          );
        },
      );

      group(
        'toJson',
        () {
          test(
            'should serialize model to json',
            () {
              final model = Link(
                href: 'https://api.octopus.energy/v1/products/VAR-17-01-11/',
                method: 'GET',
                rel: 'self',
              );

              final result = model.toJson();

              expect(
                result['href'],
                'https://api.octopus.energy/v1/products/VAR-17-01-11/',
              );

              expect(
                result['method'],
                'GET',
              );

              expect(
                result['rel'],
                'self',
              );
            },
          );
        },
      );
    },
  );
}
