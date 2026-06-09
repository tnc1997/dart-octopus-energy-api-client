class Link {
  String href;
  String method;
  String rel;

  Link({
    required this.href,
    required this.method,
    required this.rel,
  });

  factory Link.fromJson(
    Map<String, dynamic> json,
  ) {
    return Link(
      href: json['href'] as String,
      method: json['method'] as String,
      rel: json['rel'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'method': method,
      'rel': rel,
    };
  }
}
