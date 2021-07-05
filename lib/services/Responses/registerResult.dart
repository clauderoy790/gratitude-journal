class RegisterResult {
  final String userID;
  final String error;

  RegisterResult({
    required this.userID,
    required this.error,
  });

  factory RegisterResult.fromJson(Map<String, dynamic> json) {
    return RegisterResult(
      userID: json['userID'],
      error: json['error'],
    );
  }
}
