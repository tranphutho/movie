// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'casts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CastsStateTearOff {
  const _$CastsStateTearOff();

  _CastsState call(
      {required List<CastModel> listCast, required FormStatus status}) {
    return _CastsState(
      listCast: listCast,
      status: status,
    );
  }
}

/// @nodoc
const $CastsState = _$CastsStateTearOff();

/// @nodoc
mixin _$CastsState {
  List<CastModel> get listCast => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastsStateCopyWith<CastsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastsStateCopyWith<$Res> {
  factory $CastsStateCopyWith(
          CastsState value, $Res Function(CastsState) then) =
      _$CastsStateCopyWithImpl<$Res>;
  $Res call({List<CastModel> listCast, FormStatus status});
}

/// @nodoc
class _$CastsStateCopyWithImpl<$Res> implements $CastsStateCopyWith<$Res> {
  _$CastsStateCopyWithImpl(this._value, this._then);

  final CastsState _value;
  // ignore: unused_field
  final $Res Function(CastsState) _then;

  @override
  $Res call({
    Object? listCast = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      listCast: listCast == freezed
          ? _value.listCast
          : listCast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$CastsStateCopyWith<$Res> implements $CastsStateCopyWith<$Res> {
  factory _$CastsStateCopyWith(
          _CastsState value, $Res Function(_CastsState) then) =
      __$CastsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CastModel> listCast, FormStatus status});
}

/// @nodoc
class __$CastsStateCopyWithImpl<$Res> extends _$CastsStateCopyWithImpl<$Res>
    implements _$CastsStateCopyWith<$Res> {
  __$CastsStateCopyWithImpl(
      _CastsState _value, $Res Function(_CastsState) _then)
      : super(_value, (v) => _then(v as _CastsState));

  @override
  _CastsState get _value => super._value as _CastsState;

  @override
  $Res call({
    Object? listCast = freezed,
    Object? status = freezed,
  }) {
    return _then(_CastsState(
      listCast: listCast == freezed
          ? _value.listCast
          : listCast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$_CastsState extends _CastsState {
  _$_CastsState({required this.listCast, required this.status}) : super._();

  @override
  final List<CastModel> listCast;
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'CastsState(listCast: $listCast, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CastsState &&
            const DeepCollectionEquality().equals(other.listCast, listCast) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listCast),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$CastsStateCopyWith<_CastsState> get copyWith =>
      __$CastsStateCopyWithImpl<_CastsState>(this, _$identity);
}

abstract class _CastsState extends CastsState {
  factory _CastsState(
      {required List<CastModel> listCast,
      required FormStatus status}) = _$_CastsState;
  _CastsState._() : super._();

  @override
  List<CastModel> get listCast;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$CastsStateCopyWith<_CastsState> get copyWith =>
      throw _privateConstructorUsedError;
}
