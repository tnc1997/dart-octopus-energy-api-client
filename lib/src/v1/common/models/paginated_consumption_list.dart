import 'consumption.dart';

class PaginatedConsumptionList {
  int count;
  String? next;
  String? previous;
  List<Consumption> results;

  PaginatedConsumptionList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PaginatedConsumptionList.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaginatedConsumptionList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Consumption.fromJson(e as Map<String, dynamic>))
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
