import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie/feature/form_status.dart';
import '../../data/model/cast_model.dart';

part 'casts_state.freezed.dart';

@freezed
class CastsState with _$CastsState {
  factory CastsState({
    required List<CastModel> listCast,
    required FormStatus status,
  }) = _CastsState;

  const CastsState._();

  factory CastsState.inital() =>
      CastsState(listCast: [], status: FormStatus.pure);
}
