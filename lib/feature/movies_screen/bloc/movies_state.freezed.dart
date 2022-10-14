// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

  _MoviesState call(
      {required List<MovieModel> listMovie, required FormStatus status}) {
    return _MoviesState(
      listMovie: listMovie,
      status: status,
    );
  }
}

/// @nodoc
const $MoviesState = _$MoviesStateTearOff();

/// @nodoc
mixin _$MoviesState {
  List<MovieModel> get listMovie => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
  $Res call({List<MovieModel> listMovie, FormStatus status});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;

  @override
  $Res call({
    Object? listMovie = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      listMovie: listMovie == freezed
          ? _value.listMovie
          : listMovie // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$MoviesStateCopyWith(
          _MoviesState value, $Res Function(_MoviesState) then) =
      __$MoviesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MovieModel> listMovie, FormStatus status});
}

/// @nodoc
class __$MoviesStateCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$MoviesStateCopyWith<$Res> {
  __$MoviesStateCopyWithImpl(
      _MoviesState _value, $Res Function(_MoviesState) _then)
      : super(_value, (v) => _then(v as _MoviesState));

  @override
  _MoviesState get _value => super._value as _MoviesState;

  @override
  $Res call({
    Object? listMovie = freezed,
    Object? status = freezed,
  }) {
    return _then(_MoviesState(
      listMovie: listMovie == freezed
          ? _value.listMovie
          : listMovie // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$_MoviesState extends _MoviesState {
  _$_MoviesState({required this.listMovie, required this.status}) : super._();

  @override
  final List<MovieModel> listMovie;
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'MoviesState(listMovie: $listMovie, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesState &&
            const DeepCollectionEquality().equals(other.listMovie, listMovie) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listMovie),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$MoviesStateCopyWith<_MoviesState> get copyWith =>
      __$MoviesStateCopyWithImpl<_MoviesState>(this, _$identity);
}

abstract class _MoviesState extends MoviesState {
  factory _MoviesState(
      {required List<MovieModel> listMovie,
      required FormStatus status}) = _$_MoviesState;
  _MoviesState._() : super._();

  @override
  List<MovieModel> get listMovie;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$MoviesStateCopyWith<_MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}
