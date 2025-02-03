class Login {

  final String accesstoken;
  final String refreshtoken;
  final String tokentype;

  Login ({
    required this.accesstoken,
    required this.refreshtoken,
    required this.tokentype,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'accesstoken': String accesstoken,
        'refreshtoken': String refreshtoken,
        'tokentype': String tokentype,
      } =>
        Login(
          accesstoken:  accesstoken,
          refreshtoken: refreshtoken,
          tokentype: tokentype,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}