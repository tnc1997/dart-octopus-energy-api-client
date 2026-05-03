import 'products.dart';

class PaginatedProductsList {
  int count;
  String? next;
  String? previous;
  List<Products> results;

  PaginatedProductsList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PaginatedProductsList.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaginatedProductsList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Products.fromJson(e as Map<String, dynamic>))
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
