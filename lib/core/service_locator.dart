import 'package:api_toko/core/network/dio_client.dart';
import 'package:api_toko/features/auth/data/datasources/auth_api_service.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // Register your services and repositories here
  // Example:
  // sl.registerLazySingleton<SomeService>(() => SomeServiceImpl());
  // sl.registerLazySingleton<SomeRepository>(() => SomeRepositoryImpl());
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());
}
