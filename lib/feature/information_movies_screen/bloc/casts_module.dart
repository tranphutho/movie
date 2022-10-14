import 'package:movie/feature/data/use_case/cast_use_case.dart';
import 'package:movie/feature/information_movies_screen/bloc/casts_presenter.dart';
import 'package:movie/injector/injector.dart';

class CastsModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<CastsPresenter>(
        () => CastsPresenter(injector.get<CastUseCase>()));
  }
}
