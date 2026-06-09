class GridSupplyPoint {
  String groupId;

  GridSupplyPoint({
    required this.groupId,
  });

  factory GridSupplyPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GridSupplyPoint(
      groupId: json['group_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'group_id': groupId,
    };
  }
}
