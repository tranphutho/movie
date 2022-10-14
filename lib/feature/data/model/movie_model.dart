import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'id') int? id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required String overview,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MovieModel;
  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
