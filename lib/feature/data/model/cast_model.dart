import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.freezed.dart';
part 'cast_model.g.dart';

@freezed
class CastModel with _$CastModel {
  const factory CastModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'character') String? character,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}

// "adult": false,
// "gender": 1,
// "id": 54633,
// "known_for_department": "Acting",
// "name": "Grace Caroline Currey",
// "original_name": "Grace Caroline Currey",
// "popularity": 56.722,
// "profile_path": "/6chZcnjWEiFfpmB6D5BR9YUeIs9.jpg",
// "cast_id": 3,
// "character": "Becky",
// "credit_id": "62a21d28e22d2800a884c888",
// "order": 0
