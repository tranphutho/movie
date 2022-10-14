import 'package:movie/feature/data/entities/request_get_cast_entities.dart';
import 'package:movie/feature/data/model/cast_model.dart';
import 'package:movie/feature/data/repositories/cast_repositories.dart';
import 'package:movie/feature/data/services/network_services/api_services.dart';

class CastRepositoriesImplement extends CastRepositories {
  final ApiServices _apiServices;

  CastRepositoriesImplement(this._apiServices);

  @override
  Future<List<CastModel>> getCastList(RequestGetCastEntities request) async {
    final response = await _apiServices.getCastList(request.idmovie);

    List<CastModel> castList = [];
    //var body = json.jsonDecode(reponse.body);

    final results = response["cast"];

    if (results != []) {
      for (var jsonItem in results) {
        try {
          CastModel cast = CastModel.fromJson(jsonItem);

          castList.add(cast);
        } catch (ex) {
          print(ex);
        }
      }
    }

    return castList;
  }
}
