import 'package:bloc_app/core/networking/api_service.dart';
import 'package:bloc_app/core/networking/dio_factory.dart';
import 'package:bloc_app/features/login/data/repos/login_repo.dart';
import 'package:bloc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  Dio dio = DioFactory.getDio();
  // Registering the ApiService
  getIt.registerLazySingleton(() => ApiService(dio));

  // Registering the LoginRepo
  getIt.registerLazySingleton(() => LoginRepo(getIt()));

  // Registering the LoginCubit
  getIt.registerFactory(() => LoginCubit(getIt()));
}