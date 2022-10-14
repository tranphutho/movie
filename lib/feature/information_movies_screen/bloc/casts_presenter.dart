import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/data/entities/request_get_cast_entities.dart';
import 'package:movie/feature/data/use_case/cast_use_case.dart';
import 'package:movie/feature/form_status.dart';
import 'package:movie/feature/information_movies_screen/bloc/casts_state.dart';

class CastsPresenter extends Cubit<CastsState> {
  final CastUseCase _castUseCase;
  CastsPresenter(
    this._castUseCase, {
    @visibleForTesting CastsState? state,
  }) : super(state ?? CastsState.inital());

  void onInitSate(String idmovie) {
    getCastList(idmovie);
  }

  Future<void> getCastList(String idmovie) async {
    emit(state.copyWith(status: FormStatus.submissionInProgress));
    try {
      final request = RequestGetCastEntities(idmovie: idmovie);
      final data = await _castUseCase.run(request);
      emit(
          state.copyWith(listCast: data, status: FormStatus.submissionSuccess));
    } catch (e) {
      emit(state.copyWith(status: FormStatus.submissionFailure));
    }
  }
}
