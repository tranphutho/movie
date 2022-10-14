import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie/feature/data/model/movie_model.dart';
import 'package:movie/feature/movies_screen/bloc/movies_module.dart';

class ImageInformationMoviesWidget extends StatelessWidget {
  MovieModel movies;
  ImageInformationMoviesWidget({required this.movies, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 18),
          child: SizedBox(
            height: 113,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network("https://image.tmdb.org/t/p/original/" +
                  movies.posterPath.toString()),
              // child: Image.network(
              //     "https://image.tmdb.org/t/p/original/xfNHRI2f5kHGvogxLd0C5sB90L7.jpg"),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textString(
                  text: movies.title,
                  // text: "test",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    textString(
                        text: "Xuất bản: ",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Comfortaa",
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 16,
                    ),
                    textString(
                        text: movies.releaseDate,
                        // text: "test",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Comfortaa",
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      textString(
                          text: "Thể loại: ",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Comfortaa",
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        width: 16,
                      ),
                      textString(
                          text: movies.releaseDate,
                          // text: "test",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Comfortaa",
                              fontWeight: FontWeight.w700)),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

Widget textString({required text, required style}) {
  return Text(text, style: style);
}
