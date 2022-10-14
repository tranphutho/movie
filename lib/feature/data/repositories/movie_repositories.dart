import 'package:movie/feature/data/entities/request_get_cast_entities.dart';
import 'package:movie/feature/data/model/cast_model.dart';
import 'package:movie/feature/data/model/movie_model.dart';

abstract class MovieRepositories {
  Future<List<MovieModel>> getMovieList();
}
