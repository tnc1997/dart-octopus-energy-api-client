import 'installation.dart';

class ExportDetails {
  String? importMpan;
  List<Installation>? installations;
  String? siteContactEmail;
  String? siteContactName;
  String? siteContactPhone;

  ExportDetails({
    this.importMpan,
    this.installations,
    this.siteContactEmail,
    this.siteContactName,
    this.siteContactPhone,
  });

  factory ExportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExportDetails(
      importMpan: json['import_mpan'] as String?,
      installations: (json['installations'] as List<dynamic>?)
          ?.map((e) => Installation.fromJson(e as Map<String, dynamic>))
          .toList(),
      siteContactEmail: json['site_contact_email'] as String?,
      siteContactName: json['site_contact_name'] as String?,
      siteContactPhone: json['site_contact_phone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'import_mpan': importMpan,
      'installations': installations?.map((e) => e.toJson()).toList(),
      'site_contact_email': siteContactEmail,
      'site_contact_name': siteContactName,
      'site_contact_phone': siteContactPhone,
    };
  }
}
