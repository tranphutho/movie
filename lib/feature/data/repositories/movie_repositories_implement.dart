import 'package:movie/feature/data/model/movie_model.dart';
import 'package:movie/feature/data/repositories/movie_repositories.dart';
import 'package:movie/feature/data/services/network_services/api_services.dart';
import 'dart:convert' as json;

class MovieRepositoriesImplement extends MovieRepositories {
  final ApiServices _apiServices;
  MovieRepositoriesImplement(this._apiServices);

  @override
  Future<List<MovieModel>> getMovieList() async {
    final reponse = await _apiServices.getMovieList();
    List<MovieModel> moviesList = [];
    //var body = json.jsonDecode(reponse.body);

    final results = reponse["results"];
    if (results != []) {
      for (var jsonItem in results) {
        MovieModel movies = MovieModel.fromJson(jsonItem);
        moviesList.add(movies);
      }
    }
    return moviesList;
  }
}
