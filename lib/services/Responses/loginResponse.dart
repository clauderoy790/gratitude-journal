class LoginResponse {
  final String id;
  final bool success;
  final String error;

  LoginResponse({
    required this.id,
    required this.success,
    required this.error,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      id: json['userID'],
      success: json['success'],
      error: json['error'],
    );
  }
}
