import 'package:octopus_energy_api_client/src/common/utils/decimal_utils.dart';
import 'package:test/test.dart';

void main() {
  group(
    'parseDecimal',
    () {
      test(
        'should return double when value is a double',
        () {
          expect(
            parseDecimal(10.5),
            10.5,
          );

          expect(
            parseDecimal(0.0),
            0.0,
          );

          expect(
            parseDecimal(-5.5),
            -5.5,
          );
        },
      );

      test(
        'should return double when value is a valid numeric string',
        () {
          expect(
            parseDecimal('10.5'),
            10.5,
          );

          expect(
            parseDecimal('10'),
            10.0,
          );

          expect(
            parseDecimal('0'),
            0.0,
          );

          expect(
            parseDecimal('-5.5'),
            -5.5,
          );
        },
      );

      test(
        'should return double when value is an int',
        () {
          expect(
            parseDecimal(10),
            10.0,
          );

          expect(
            parseDecimal(0),
            0.0,
          );

          expect(
            parseDecimal(-5),
            -5.0,
          );
        },
      );

      test(
        'should return null when value is null',
        () {
          expect(
            parseDecimal(null),
            isNull,
          );
        },
      );

      test(
        'should throw FormatException when value is an invalid string',
        () {
          expect(
            () => parseDecimal('abc'),
            throwsA(isA<FormatException>()),
          );

          expect(
            () => parseDecimal(''),
            throwsA(isA<FormatException>()),
          );

          expect(
            () => parseDecimal('10.5.5'),
            throwsA(isA<FormatException>()),
          );
        },
      );

      test(
        'should throw FormatException when value is of unsupported type',
        () {
          expect(
            () => parseDecimal(true),
            throwsA(isA<FormatException>()),
          );

          expect(
            () => parseDecimal([]),
            throwsA(isA<FormatException>()),
          );

          expect(
            () => parseDecimal({}),
            throwsA(isA<FormatException>()),
          );
        },
      );
    },
  );
}
