class Affiliate {
  String? affiliateLinkSubdomain;
  String? organizationName;
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
