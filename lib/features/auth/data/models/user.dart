import 'package:api_toko/features/auth/domain/entities/user.dart';

class UserModel {
  final String name;
  final String email;

  UserModel({required this.name, required this.email});

  // factory constructor to create UserModel from json
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}

extension UserModelX on UserModel {
  // convert UserModel to UserEntity
  UserEntity toEntity() {
    return UserEntity(name: name, email: email);
  }
}
