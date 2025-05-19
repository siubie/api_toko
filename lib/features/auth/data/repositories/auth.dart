import 'package:api_toko/core/service_locator.dart';
import 'package:api_toko/features/auth/data/datasources/auth_api_service.dart';
import 'package:api_toko/features/auth/data/models/user_login_request.dart';
import 'package:api_toko/features/auth/domain/repositories/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Either> isLoggedIn() {
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<Either> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either> register() {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either> login(UserLoginRequest userLoginRequest) async {
    Either result = await sl<AuthApiService>().login(userLoginRequest);
    return result.fold(
      (error) {
        return Left(error);
      },
      (data) async {
        Response response = data;
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('token', response.data['token']);
        return Right(response);
      },
    );
  }
}
