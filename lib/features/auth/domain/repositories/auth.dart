import 'package:api_toko/features/auth/data/models/user_login_request.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  // function signatures function name
  Future<Either> login(UserLoginRequest userLoginRequest);
  Future<Either> logout();
  Future<Either> register();
  Future<Either> isLoggedIn();
  Future<Either> getUser();
}
