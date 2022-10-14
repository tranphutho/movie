import 'package:movie/feature/data/use_case/movie_use_case.dart';
import 'package:movie/feature/movies_screen/bloc/movies_presenter.dart';
import 'package:movie/injector/injector.dart';

class MoviesModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<MoviesPresenter>(
        () => MoviesPresenter(injector.get<MovieUseCase>()));
  }
}
