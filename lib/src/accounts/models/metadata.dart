class Metadata {
  String key;
  dynamic value;

  Metadata({
    required this.key,
    required this.value,
  });

  factory Metadata.fromJson(
    Map<String, dynamic> json,
  ) {
    return Metadata(
      key: json['key'] as String,
      value: json['value'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
    };
  }
}
