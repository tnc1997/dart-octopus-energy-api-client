/// This serializer is used to allow affiliates to pass a signup reward code
/// when creating accounts which later will then give credit to the accounts
/// once their payments start.
class Affiliate {
  String? affiliateLinkSubdomain;

  /// The name of an existing organization that will be used to create an
  /// account for an affiliate.
  String? organizationName;

  /// The code of an existing signup reward referral scheme that will be used
  /// for giving credit to the created account as a signup reward.
  String? signupRewardCode;

  Affiliate({
    this.affiliateLinkSubdomain,
    this.organizationName,
    this.signupRewardCode,
  });

  factory Affiliate.fromJson(
    Map<String, dynamic> json,
  ) {
    return Affiliate(
      affiliateLinkSubdomain: json['affiliate_link_subdomain'] as String?,
      organizationName: json['organization_name'] as String?,
      signupRewardCode: json['signup_reward_code'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'affiliate_link_subdomain': affiliateLinkSubdomain,
      'organization_name': organizationName,
      'signup_reward_code': signupRewardCode,
    };
  }
}
