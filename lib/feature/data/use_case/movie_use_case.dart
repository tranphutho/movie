import 'package:movie/feature/data/entities/request_get_cast_entities.dart';
import 'package:movie/feature/data/model/movie_model.dart';
import 'package:movie/feature/data/repositories/movie_repositories_implement.dart';
import 'package:movie/feature/data/use_case/futrue_use_case.dart';
import 'package:movie/injector/injector.dart';

class MovieUseCase implements FutureUseCase<Object, List<MovieModel>> {
  @override
  Future<List<MovieModel>> run(Object request) =>
      injector.get<MovieRepositoriesImplement>().getMovieList();
}
