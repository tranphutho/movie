import '../entities/request_get_cast_entities.dart';
import '../model/cast_model.dart';

abstract class CastRepositories {
  Future<List<CastModel>> getCastList(RequestGetCastEntities request);
}
