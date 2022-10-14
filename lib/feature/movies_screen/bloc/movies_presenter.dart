import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/data/use_case/movie_use_case.dart';
import 'package:movie/feature/form_status.dart';
import 'package:movie/feature/movies_screen/bloc/movies_state.dart';

class MoviesPresenter extends Cubit<MoviesState> {
  final MovieUseCase _movieUseCase;
  //late PageController pageController;
  MoviesPresenter(
    this._movieUseCase, {
    @visibleForTesting MoviesState? state,
  }) : super(state ?? MoviesState.initial());

  void onInitState() {
    //pageController = PageController();

    getMovieList();
  }

  Future<void> getMovieList() async {
    emit(state.copyWith(status: FormStatus.submissionInProgress));

    Object object = Object();
    try {
      final data = await _movieUseCase.run(object);
      emit(state.copyWith(
          listMovie: data, status: FormStatus.submissionSuccess));
    } catch (ex) {
      emit(state.copyWith(status: FormStatus.submissionFailure));
      print(ex);
    }
  }
}
