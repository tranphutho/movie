// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
class _$MovieModelTearOff {
  const _$MovieModelTearOff();

  _MovieModel call(
      {@JsonKey(name: 'id') int? id,
      required String title,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required String overview,
      @JsonKey(name: 'release_date') String? releaseDate}) {
    return _MovieModel(
      id: id,
      title: title,
      posterPath: posterPath,
      backdropPath: backdropPath,
      overview: overview,
      releaseDate: releaseDate,
    );
  }

  MovieModel fromJson(Map<String, Object?> json) {
    return MovieModel.fromJson(json);
  }
}

/// @nodoc
const $MovieModel = _$MovieModelTearOff();

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      String title,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      String overview,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      String title,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      String overview,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_MovieModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {@JsonKey(name: 'id') this.id,
      required this.title,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.overview,
      @JsonKey(name: 'release_date') this.releaseDate});

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  final String title;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(releaseDate));

  @JsonKey(ignore: true)
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@JsonKey(name: 'id') int? id,
      required String title,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required String overview,
      @JsonKey(name: 'release_date') String? releaseDate}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
