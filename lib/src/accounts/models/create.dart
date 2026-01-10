import '../enums/account_source.dart';
import '../enums/account_type.dart';
import '../enums/brand_code.dart';
import '../enums/sales_channel.dart';
import '../enums/smart_meter_interest.dart';
import '../enums/smart_meter_read_permission.dart';
import '../enums/smart_onboarding_product_type.dart';
import 'address.dart';
import 'affiliate.dart';
import 'billing_options.dart';
import 'business.dart';
import 'deposit.dart';
import 'electricity_meter_point.dart';
import 'gas_meter_point.dart';
import 'metadata.dart';
import 'payment.dart';
import 'user.dart';

class Create {
  String? accountReference;
  AccountType accountType;
  Affiliate? affiliate;
  Address billingAddress;
  BillingOptions? billingOptions;
  BrandCode? brandCode;
  Business? business;
  Deposit? deposit;
  List<ElectricityMeterPoint>? electricityMeterPoints;
  List<GasMeterPoint>? gasMeterPoints;
  bool isChangeOfTenancy;
  List<Metadata>? metadata;
  Payment? payment;
  DateTime? preferredSsd;
  Address? previousBillingAddress;
  String? promoRewardCode;
  String? quoteCode;
  String? quoteRequestCode;
  String reference;
  String? referralCode;
  bool? requiresPostalComms;
  SalesChannel? salesChannel;
  String? salesSubchannel;
  String? signupRewardCode;
  SmartMeterInterest? smartMeterInterest;
  SmartMeterReadPermission? smartMeterReadPermission;
  SmartOnboardingProductType? smartOnboardingProductType;
  DateTime? soldAt;
  AccountSource source;
  List<User> users;

  Create({
    this.accountReference,
    required this.accountType,
    this.affiliate,
    required this.billingAddress,
    this.billingOptions,
    this.brandCode,
    this.business,
    this.deposit,
    this.electricityMeterPoints,
    this.gasMeterPoints,
    required this.isChangeOfTenancy,
    this.metadata,
    this.payment,
    this.preferredSsd,
    this.previousBillingAddress,
    this.promoRewardCode,
    this.quoteCode,
    this.quoteRequestCode,
    required this.reference,
    this.referralCode,
    this.requiresPostalComms,
    this.salesChannel,
    this.salesSubchannel,
    this.signupRewardCode,
    this.smartMeterInterest,
    this.smartMeterReadPermission,
    this.smartOnboardingProductType,
    this.soldAt,
    required this.source,
    required this.users,
  });

  factory Create.fromJson(
    Map<String, dynamic> json,
  ) {
    return Create(
      accountReference: json['account_reference'] as String?,
      accountType: AccountType.fromJson(json['account_type'] as String),
      affiliate: json['affiliate'] != null
          ? Affiliate.fromJson(json['affiliate'] as Map<String, dynamic>)
          : null,
      billingAddress:
          Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      billingOptions: json['billing_options'] != null
          ? BillingOptions.fromJson(
              json['billing_options'] as Map<String, dynamic>)
          : null,
      brandCode: json['brand_code'] != null
          ? BrandCode.fromJson(json['brand_code'] as String)
          : null,
      business: json['business'] != null
          ? Business.fromJson(json['business'] as Map<String, dynamic>)
          : null,
      deposit: json['deposit'] != null
          ? Deposit.fromJson(json['deposit'] as Map<String, dynamic>)
          : null,
      electricityMeterPoints: (json['electricity_meter_points']
              as List<dynamic>?)
          ?.map(
              (e) => ElectricityMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasMeterPoints: (json['gas_meter_points'] as List<dynamic>?)
          ?.map((e) => GasMeterPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      isChangeOfTenancy: json['is_change_of_tenancy'] as bool,
      metadata: (json['metadata'] as List<dynamic>?)
          ?.map((e) => Metadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: json['payment'] != null
          ? Payment.fromJson(json['payment'] as Map<String, dynamic>)
          : null,
      preferredSsd: json['preferred_ssd'] != null
          ? DateTime.parse(json['preferred_ssd'] as String)
          : null,
      previousBillingAddress: json['previous_billing_address'] != null
          ? Address.fromJson(
              json['previous_billing_address'] as Map<String, dynamic>,
            )
          : null,
      promoRewardCode: json['promo_reward_code'] as String?,
      quoteCode: json['quote_code'] as String?,
      quoteRequestCode: json['quote_request_code'] as String?,
      reference: json['reference'] as String,
      referralCode: json['referral_code'] as String?,
      requiresPostalComms: json['requires_postal_comms'] as bool?,
      salesChannel: json['sales_channel'] != null
          ? SalesChannel.fromJson(json['sales_channel'] as String)
          : null,
      salesSubchannel: json['sales_subchannel'] as String?,
      signupRewardCode: json['signup_reward_code'] as String?,
      smartMeterInterest: json['smart_meter_interest'] != null
          ? SmartMeterInterest.fromJson(
              json['smart_meter_interest'] as String,
            )
          : null,
      smartMeterReadPermission: json['smart_meter_read_permission'] != null
          ? SmartMeterReadPermission.fromJson(
              json['smart_meter_read_permission'] as String,
            )
          : null,
      smartOnboardingProductType: json['smart_onboarding_product_type'] != null
          ? SmartOnboardingProductType.fromJson(
              json['smart_onboarding_product_type'] as String,
            )
          : null,
      soldAt: json['sold_at'] != null
          ? DateTime.parse(json['sold_at'] as String)
          : null,
      source: AccountSource.fromJson(json['source'] as String),
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'account_reference': accountReference,
      'account_type': accountType.toJson(),
      'affiliate': affiliate?.toJson(),
      'billing_address': billingAddress.toJson(),
      'billing_options': billingOptions?.toJson(),
      'brand_code': brandCode?.toJson(),
      'business': business?.toJson(),
      'deposit': deposit?.toJson(),
      'electricity_meter_points':
          electricityMeterPoints?.map((e) => e.toJson()).toList(),
      'gas_meter_points': gasMeterPoints?.map((e) => e.toJson()).toList(),
      'is_change_of_tenancy': isChangeOfTenancy,
      'metadata': metadata?.map((e) => e.toJson()).toList(),
      'payment': payment?.toJson(),
      'preferred_ssd': preferredSsd?.toIso8601String(),
      'previous_billing_address': previousBillingAddress?.toJson(),
      'promo_reward_code': promoRewardCode,
      'quote_code': quoteCode,
      'quote_request_code': quoteRequestCode,
      'reference': reference,
      'referral_code': referralCode,
      'requires_postal_comms': requiresPostalComms,
      'sales_channel': salesChannel?.toJson(),
      'sales_subchannel': salesSubchannel,
      'signup_reward_code': signupRewardCode,
      'smart_meter_interest': smartMeterInterest?.toJson(),
      'smart_meter_read_permission': smartMeterReadPermission?.toJson(),
      'smart_onboarding_product_type': smartOnboardingProductType?.toJson(),
      'sold_at': soldAt?.toIso8601String(),
      'source': source.toJson(),
      'users': users.map((e) => e.toJson()).toList(),
    };
  }
}
