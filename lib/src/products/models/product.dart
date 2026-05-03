import '../../common/models/link.dart';
import 'eco_7_electricity_tariff.dart';
import 'gas_tariff.dart';
import 'sample_consumption.dart';
import 'sample_quotes.dart';
import 'standard_electricity_tariff.dart';

class Product {
  DateTime availableFrom;
  DateTime? availableTo;
  String brand;
  String code;
  String description;
  String displayName;
  Map<String, Map<String, Eco7ElectricityTariff>>
      dualRegisterElectricityTariffs;
  String fullName;
  bool? isBusiness;
  bool? isGreen;
  bool? isPrepay;
  bool isRestricted;
  bool? isTracker;
  bool? isVariable;
  List<Link> links;
  SampleConsumption sampleConsumption;
  SampleQuotes sampleQuotes;
  Map<String, Map<String, StandardElectricityTariff>>
      singleRegisterElectricityTariffs;
  Map<String, Map<String, GasTariff>> singleRegisterGasTariffs;
  DateTime tariffsActiveAt;
  int? term;

  Product({
    required this.availableFrom,
    this.availableTo,
    required this.brand,
    required this.code,
    required this.description,
    required this.displayName,
    required this.dualRegisterElectricityTariffs,
    required this.fullName,
    this.isBusiness,
    this.isGreen,
    this.isPrepay,
    required this.isRestricted,
    this.isTracker,
    this.isVariable,
    required this.links,
    required this.sampleConsumption,
    required this.sampleQuotes,
    required this.singleRegisterElectricityTariffs,
    required this.singleRegisterGasTariffs,
    required this.tariffsActiveAt,
    this.term,
  });

  factory Product.fromJson(
    Map<String, dynamic> json,
  ) {
    return Product(
      availableFrom: DateTime.parse(json['availableFrom'] as String),
      availableTo: json['availableTo'] != null
          ? DateTime.parse(json['availableTo'] as String)
          : null,
      brand: json['brand'] as String,
      code: json['code'] as String,
      description: json['description'] as String,
      displayName: json['displayName'] as String,
      dualRegisterElectricityTariffs:
          (json['dualRegisterElectricityTariffs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k, Eco7ElectricityTariff.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      fullName: json['fullName'] as String,
      isBusiness: json['isBusiness'] as bool?,
      isGreen: json['isGreen'] as bool?,
      isPrepay: json['isPrepay'] as bool?,
      isRestricted: json['isRestricted'] as bool,
      isTracker: json['isTracker'] as bool?,
      isVariable: json['isVariable'] as bool?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      sampleConsumption: SampleConsumption.fromJson(
          json['sampleConsumption'] as Map<String, dynamic>),
      sampleQuotes:
          SampleQuotes.fromJson(json['sampleQuotes'] as Map<String, dynamic>),
      singleRegisterElectricityTariffs:
          (json['singleRegisterElectricityTariffs'] as Map<String, dynamic>)
              .map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k,
                  StandardElectricityTariff.fromJson(
                      e as Map<String, dynamic>)),
            )),
      ),
      singleRegisterGasTariffs:
          (json['singleRegisterGasTariffs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) =>
                  MapEntry(k, GasTariff.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      tariffsActiveAt: DateTime.parse(json['tariffsActiveAt'] as String),
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
      'display_name': displayName,
      'dual_register_electricity_tariffs': dualRegisterElectricityTariffs.map(
        (k, e) => MapEntry(
          k,
          e.map((k2, e) => MapEntry(k2, e.toJson())),
        ),
      ),
      'full_name': fullName,
      'is_business': isBusiness,
      'is_green': isGreen,
      'is_prepay': isPrepay,
      'is_restricted': isRestricted,
      'is_tracker': isTracker,
      'is_variable': isVariable,
      'links': links.map((e) => e.toJson()).toList(),
      'sample_consumption': sampleConsumption.toJson(),
      'sample_quotes': sampleQuotes.toJson(),
      'single_register_electricity_tariffs':
          singleRegisterElectricityTariffs.map(
        (k, e) => MapEntry(
          k,
          e.map((k, e) => MapEntry(k, e.toJson())),
        ),
      ),
      'single_register_gas_tariffs': singleRegisterGasTariffs.map(
        (k, e) => MapEntry(
          k,
          e.map((k, e) => MapEntry(k, e.toJson())),
        ),
      ),
      'tariffs_active_at': tariffsActiveAt.toIso8601String(),
      'term': term,
    };
  }
}
