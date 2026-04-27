import 'historical_charge.dart';

class PaginatedHistoricalChargeList {
  int count;
  String? next;
  String? previous;
  List<HistoricalCharge> results;

  PaginatedHistoricalChargeList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PaginatedHistoricalChargeList.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaginatedHistoricalChargeList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => HistoricalCharge.fromJson(e as Map<String, dynamic>))
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
