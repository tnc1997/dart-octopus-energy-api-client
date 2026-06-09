import 'grid_supply_point.dart';

class PaginatedGridSupplyPointList {
  int count;
  String? next;
  String? previous;
  List<GridSupplyPoint> results;

  PaginatedGridSupplyPointList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PaginatedGridSupplyPointList.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaginatedGridSupplyPointList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => GridSupplyPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((e) => e.toJson()).toList(),
    };
  }
}
