import 'package:dio/dio.dart' hide Headers;
import 'package:movie/feature/data/model/cast_model.dart';
import 'package:movie/feature/data/model/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi()
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(
      '/3/movie/popular?api_key=9bb89316d8693b06d7a84980b29c011f&language=vi-VN')
  @Headers(<String, String>{
    'Content-Type': 'application/json',
  })
  Future<dynamic> getMovieList();

  @GET(
      '/3/movie/{idmovie}/credits?api_key=9bb89316d8693b06d7a84980b29c011f&language=vi-VN')
  @Headers(<String, String>{
    'Content-Type': 'application/json',
  })
  Future<dynamic> getCastList(@Path() String idmovie);
}
