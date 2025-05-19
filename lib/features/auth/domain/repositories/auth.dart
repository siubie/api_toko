import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  // function signatures function name
  Future<Either> login();
  Future<Either> logout();
  Future<Either> register();
  Future<Either> isLoggedIn();
  Future<Either> getUser();
}
