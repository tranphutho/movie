import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/data/model/movie_model.dart';
import 'package:movie/feature/data/use_case/cast_use_case.dart';
import 'package:movie/feature/information_movies_screen/bloc/casts_state.dart';
import 'package:movie/feature/information_movies_screen/components/cast_image.dart';
import 'package:movie/feature/movies_screen/bloc/movies_module.dart';
import 'package:movie/injector/injector.dart';

import '../form_status.dart';
import 'bloc/casts_presenter.dart';
import 'components/back_button.movie.dart';
import 'components/image_information_movies.dart';

class InformationMoviesScreenWidget extends StatelessWidget {
  final MovieModel movie;
  InformationMoviesScreenWidget({required this.movie, Key? key})
      : super(key: key);
  final _presenter = injector.get<CastsPresenter>();
  @override
  Widget build(BuildContext context) {
    _presenter.getCastList(movie.id.toString());
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://image.tmdb.org/t/p/original" +
                    movie.backdropPath!),
                // image: NetworkImage(
                // "https://image.tmdb.org/t/p/original/xfNHRI2f5kHGvogxLd0C5sB90L7.jpg"),
                fit: BoxFit.cover)),
        child: Container(
          color: Colors.white.withOpacity(0.5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyWidget(),
                ImageInformationMoviesWidget(
                  movies: movie,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 27),
                    child: Text(
                      "Cast",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(height: 5),
                BlocConsumer<CastsPresenter, CastsState>(
                    bloc: _presenter,
                    buildWhen: (previous, current) =>
                        previous.listCast != current.listCast ||
                        previous.status != current.status,
                    builder: (context, state) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: ListView.builder(
                          itemCount: _presenter.state.listCast.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                                padding: EdgeInsets.all(5),
                                child: CastImgaeWidget(
                                  cast: _presenter
                                      .state.listCast[index].character
                                      .toString(),
                                  name: _presenter.state.listCast[index].name
                                      .toString(),
                                  nameImage: _presenter.state.listCast[index]
                                              .profilePath !=
                                          null
                                      ? "https://image.tmdb.org/t/p/w500" +
                                          _presenter
                                              .state.listCast[index].profilePath
                                              .toString()
                                      : "https://cdn1.vectorstock.com/i/1000x1000/22/05/male-profile-picture-vector-1862205.jpg"
                                          .toString(),
                                ));
                          },
                        ),
                      );
                    },
                    listener: (context, state) {
                      if (state.status == FormStatus.submissionInProgress) {
                        const Scaffold(
                          body: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      } else {
                        //Todo: dismiss Hud
                      }
                    }),
                SizedBox(height: 5),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 27),
                    child: Text(
                      "Overview",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(height: 2),
                Scrollbar(
                  child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 27, right: 27),
                      child: Text(
                        movie.overview,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Comfortaa",
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
