import 'package:movie/feature/form_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/movie_model.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  factory MoviesState({
    required List<MovieModel> listMovie,
    required FormStatus status,
  }) = _MoviesState;

  const MoviesState._();

  factory MoviesState.initial() =>
      MoviesState(listMovie: [], status: FormStatus.pure);
}
