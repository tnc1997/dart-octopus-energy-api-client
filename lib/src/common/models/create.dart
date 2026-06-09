import '../../accounts/enums/account_source.dart';
import '../../accounts/enums/account_type.dart';
import '../../accounts/enums/brand_code.dart';
import '../../accounts/enums/sales_channel.dart';
import '../../accounts/enums/smart_meter_interest.dart';
import '../../accounts/enums/smart_meter_read_permission.dart';
import '../../accounts/enums/smart_onboarding_product_type.dart';
import '../../accounts/models/affiliate.dart';
import '../../accounts/models/billing_options.dart';
import '../../accounts/models/business.dart';
import '../../accounts/models/deposit.dart';
import '../../accounts/models/metadata.dart';
import '../../accounts/models/payment.dart';
import '../../accounts/models/user.dart';
import '../../electricity_meter_points/models/electricity_meter_point.dart';
import '../../gas_meter_points/models/gas_meter_point.dart';
import 'address.dart';

/// Serializer to create an account via a REST API.
///
/// Temporary to allow for legacy behaviour where uplifts do not count towards
/// quoted amounts, which is potentially only OEGB behaviour.
class Create {
  /// A unique reference to previous external account number or similar account
  /// identifier.
  ///
  /// The account reference must be in NAMESPACE-VALUE format.
  String? accountReference;

  AccountType accountType;

  Affiliate? affiliate;

  Address billingAddress;

  /// Billing options for the account.
  BillingOptions? billingOptions;

  /// A code to specify the account should be for a particular brand.
  ///
  /// This is only required when creating an account in an instance with
  /// multiple brands and for which the requested brand is not the default brand
  /// of that instance.
  BrandCode? brandCode;

  Business? business;

  Deposit? deposit;

  /// At least one electricity or gas meter-point must be included. A maximum of
  /// two electricity and one gas meter-point can be included. All meter-points
  /// must be based in the Great Britain. All meter-points must belong to the
  /// same address. For an electricity meter-point, at least one of 'mpan' or
  /// 'address' must be included. At least one of 'consumption_standard'
  /// (standard tariff) or a combination of 'consumption_day' and
  /// 'consumption_night' (two-rate tariff) or 'consumption_day',
  /// 'consumption_night' and 'consumption_off_peak' (three-rate tariff) must be
  /// included depending on the type of tariff specified.
  List<ElectricityMeterPoint>? electricityMeterPoints;

  /// At least one electricity or gas meter-point must be included. A maximum of
  /// two electricity and one gas meter-point can be included. All meter-points
  /// must be based in the Great Britain. All meter-points must belong to the
  /// same address. For a gas meter-point, at least one of 'mprn' or 'address'
  /// must be included, as well as 'consumption_standard'.
  List<GasMeterPoint>? gasMeterPoints;

  /// Whether this account is a change of tenancy at the property.
  bool isChangeOfTenancy;

  /// An array of key value pairs for storing generic metadata relating to an
  /// account.
  List<Metadata>? metadata;

  /// The payment details are required when using the method
  /// 'MONTHLY_DIRECT_DEBIT' but are optional if all the meters are of type
  /// PREPAYMENT'. The 'MONTHLY_DIRECT_PAYMENT' method is not available to all
  /// users.
  Payment? payment;

  /// A preferred supply start date.
  ///
  /// Only include this field if the earliest possible supply startdate is not
  /// preferred.
  DateTime? preferredSsd;

  Address? previousBillingAddress;

  /// A promotional code that will be applied to the account.
  String? promoRewardCode;

  /// The code of an existing legacy quote created using the legacy 'CreatQuote'
  /// mutation as part of the join supplier journey for this new customer. If
  /// the quote was generated as part of an affiliate session, the affiliate
  /// link and any query parameters belonging to the session will be associated
  /// with the created account. Note: only one of 'quote_code' and
  /// 'quote_request_code' should be provided in the input.
  String? quoteCode;

  /// The code of an existing quote created using the 'QuoteNewMeterPoints'
  /// mutation as part of the join supplier journey for this new customer. If
  /// the quote was generated as part of an affiliate session, the affiliate
  /// link and any query parameters belonging to the session will be associated
  /// with the created account. Note: only one of 'quote_code' and
  /// 'quote_request_code' should be provided in the input.
  String? quoteRequestCode;

  /// A unique partner reference.
  ///
  /// The reference provided should be unique per switch.
  String reference;

  /// The referral code of an existing account linked to a Kraken referral
  /// scheme.
  String? referralCode;

  /// Communication delivery preference
  ///
  /// When requires_postal_comms is True, then set to POSTAL, else set to EMAIL,
  /// when not provided it will be null.
  bool? requiresPostalComms;

  SalesChannel? salesChannel;

  /// An optional segmentation of the sales channel, e.g. the names of the
  /// specific price comparison site, or the telesales organisation.
  String? salesSubchannel;

  String? signupRewardCode;

  /// The occupier’s interest in installing a smart meter.
  SmartMeterInterest? smartMeterInterest;

  /// The read permission frequency the occupier grants to meter readings from
  /// smart meters.
  SmartMeterReadPermission? smartMeterReadPermission;

  /// A code to indicate which type of smart tariff the customer is meant to
  /// onboard onto.
  ///
  /// This is a restricted option. Please get in touch for information on
  /// whether this can be enabled and what the allowed options are.
  SmartOnboardingProductType? smartOnboardingProductType;

  /// A datetime of when the account sale was made.
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
