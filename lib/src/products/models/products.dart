import '../../common/models/link.dart';
import '../enums/direction.dart';

class Products {
  DateTime availableFrom;
  DateTime? availableTo;
  String brand;
  String code;
  String description;
  Direction? direction;
  String displayName;
  String fullName;
  bool? isBusiness;
  bool? isGreen;
  bool? isPrepay;
  bool isRestricted;
  bool? isTracker;
  bool? isVariable;
  List<Link> links;
  int? term;

  Products({
    required this.availableFrom,
    this.availableTo,
    required this.brand,
    required this.code,
    required this.description,
    this.direction,
    required this.displayName,
    required this.fullName,
    this.isBusiness,
    this.isGreen,
    this.isPrepay,
    required this.isRestricted,
    this.isTracker,
    this.isVariable,
    required this.links,
    this.term,
  });

  factory Products.fromJson(
    Map<String, dynamic> json,
  ) {
    return Products(
      availableFrom: DateTime.parse(json['available_from'] as String),
      availableTo: json['available_to'] != null
          ? DateTime.parse(json['available_to'] as String)
          : null,
      brand: json['brand'] as String,
      code: json['code'] as String,
      description: json['description'] as String,
      direction: json['direction'] != null
          ? Direction.fromJson(json['direction'] as String)
          : null,
      displayName: json['display_name'] as String,
      fullName: json['full_name'] as String,
      isBusiness: json['is_business'] as bool?,
      isGreen: json['is_green'] as bool?,
      isPrepay: json['is_prepay'] as bool?,
      isRestricted: json['is_restricted'] as bool,
      isTracker: json['is_tracker'] as bool?,
      isVariable: json['is_variable'] as bool?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      term: (json['term'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'available_from': availableFrom.toIso8601String(),
      'available_to': availableTo?.toIso8601String(),
      'brand': brand,
      'code': code,
      'description': description,
      'direction': direction?.toJson(),
      'display_name': displayName,
      'full_name': fullName,
      'is_business': isBusiness,
      'is_green': isGreen,
      'is_prepay': isPrepay,
      'is_restricted': isRestricted,
      'is_tracker': isTracker,
      'is_variable': isVariable,
      'links': links.map((e) => e.toJson()).toList(),
      'term': term,
    };
  }
}
