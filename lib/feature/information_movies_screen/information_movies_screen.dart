import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/back_button.movie.dart';
import 'components/image_information_movies.dart';

class InformationMoviesScreenWidget extends StatelessWidget {
  //final Movies movie;
  const InformationMoviesScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                // image: NetworkImage("https://image.tmdb.org/t/p/original" +
                //     movie.backdropPath!),
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/original/xfNHRI2f5kHGvogxLd0C5sB90L7.jpg"),
                fit: BoxFit.cover)),
        child: Container(
          color: Colors.white.withOpacity(0.5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [const MyWidget(), ImageInformationMoviesWidget()],
          ),
        ),
      ),
    ]));
  }
}
