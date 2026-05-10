double? parseDecimal(
  dynamic value,
) {
  if (value == null) {
    return null;
  }

  if (value is num) {
    return value.toDouble();
  }

  if (value is String) {
    return double.parse(value);
  }

  throw const FormatException('Invalid decimal');
}
