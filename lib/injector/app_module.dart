import 'package:dio/dio.dart';
import 'package:movie/feature/data/repositories/cast_repositories_implement.dart';
import 'package:movie/feature/data/repositories/movie_repositories_implement.dart';
import 'package:movie/feature/data/services/network_services/api_services.dart';
import 'package:movie/feature/data/use_case/cast_use_case.dart';
import 'package:movie/feature/data/use_case/movie_use_case.dart';

import 'injector.dart';

class AppModules {
  static Future<void> inject() async {
    injector.registerLazySingleton<CastUseCase>(() => CastUseCase());
    injector.registerLazySingleton<MovieUseCase>(() => MovieUseCase());
    injector.registerLazySingleton<CastRepositoriesImplement>(
        () => CastRepositoriesImplement(injector.get<ApiServices>()));

    injector.registerLazySingleton<MovieRepositoriesImplement>(
        () => MovieRepositoriesImplement(injector.get<ApiServices>()));

    injector.registerLazySingleton<ApiServices>(() => ApiServices(
        injector.get<Dio>(),
        baseUrl: "https://api.themoviedb.org"));

    injector.registerLazySingleton<Dio>(() {
      final dio = Dio();
      dio.options.baseUrl = 'https://api.themoviedb.org';
      dio.options.connectTimeout = Duration.millisecondsPerSecond * 60;
      dio.options.receiveTimeout = Duration.millisecondsPerSecond * 60;
      return dio;
    });
  }
}
