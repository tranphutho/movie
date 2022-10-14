import 'package:movie/feature/data/entities/request_get_cast_entities.dart';
import 'package:movie/feature/data/model/cast_model.dart';
import 'package:movie/feature/data/repositories/cast_repositories_implement.dart';
import 'package:movie/feature/data/use_case/futrue_use_case.dart';
import 'package:movie/injector/injector.dart';

class CastUseCase
    implements FutureUseCase<RequestGetCastEntities, List<CastModel>> {
  @override
  Future<List<CastModel>> run(RequestGetCastEntities request) =>
      injector.get<CastRepositoriesImplement>().getCastList(request);
}
