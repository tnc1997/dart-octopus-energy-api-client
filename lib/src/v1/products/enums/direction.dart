enum Direction {
  export,
  import;

  factory Direction.fromJson(
    String json,
  ) {
    switch (json) {
      case 'EXPORT':
        return Direction.export;
      case 'IMPORT':
        return Direction.import;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case Direction.export:
        return 'EXPORT';
      case Direction.import:
        return 'IMPORT';
    }
  }
}
