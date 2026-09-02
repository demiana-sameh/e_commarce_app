class LoginResponse {
  final String accessToken;
  final String expiresAtUct;
  final String refreshToken;

  LoginResponse({
    required this.accessToken,
    required this.expiresAtUct,
    required this.refreshToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['accessToken'],
      expiresAtUct: json['expiresAtUct'],
      refreshToken: json['refreshToken'],
    );
  }
}