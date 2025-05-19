import 'package:api_toko/core/constants/api_urls.dart';
import 'package:api_toko/core/network/dio_client.dart';
import 'package:api_toko/core/service_locator.dart';
import 'package:api_toko/features/auth/data/models/user_login_request.dart';
import 'package:api_toko/features/auth/data/models/user_register_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthApiService {
  // function signatures function name
  Future<Either> login(UserLoginRequest userLoginRequest);
  Future<void> logout();
  Future<void> register(UserRegisterRequest userRegisterRequest);
  Future<bool> isLoggedIn();
  Future<Map<String, dynamic>> getUser();
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Map<String, dynamic>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isLoggedIn() {
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<Either> login(UserLoginRequest userLoginRequest) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrls.login,
        data: userLoginRequest.toJson(),
      );
      return Right(response);
    } on DioException catch (e) {
      return Left(e.response?.data ?? e.toString());
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(UserRegisterRequest userRegisterRequest) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
