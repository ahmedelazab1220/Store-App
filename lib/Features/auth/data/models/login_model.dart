class LoginModel {
  final String accessToken;

  const LoginModel({required this.accessToken});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(accessToken: json["accessToken"]);
  }
}
