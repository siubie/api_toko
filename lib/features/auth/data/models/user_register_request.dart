class UserRegisterRequest {
  final String email;
  final String password;
  final String name;
  final String passwordConfirmation;

  UserRegisterRequest({
    required this.email,
    required this.password,
    required this.name,
    required this.passwordConfirmation,
  });

  // factory constructor to create UserRegisterRequest from json
  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) {
    return UserRegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );
  }

  // convert UserRegisterRequest to json
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'password_confirmation': passwordConfirmation,
    };
  }
}
