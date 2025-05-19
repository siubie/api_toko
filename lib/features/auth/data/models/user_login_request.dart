class UserLoginRequest {
  final String email;
  final String password;

  UserLoginRequest({required this.email, required this.password});

  // ini untuk nerima response dari backend laravel
  // factory constructor to create UserLoginRequest from json
  factory UserLoginRequest.fromJson(Map<String, dynamic> json) {
    return UserLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
  //ini untuk di lempar ke backend laravel
  // convert UserLoginRequest to json
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }
}
