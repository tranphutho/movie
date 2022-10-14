import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/form_status.dart';
import 'package:movie/feature/movies_screen/bloc/movies_presenter.dart';
import 'package:movie/feature/movies_screen/bloc/movies_state.dart';
import 'package:movie/injector/injector.dart';

//import '../../model/sources/movies.dart';
import '../information_movies_screen/information_movies_screen.dart';
import 'components/popular_stack_image.dart';

class PopularScreenWidget extends StatefulWidget {
  // final List<Movies> movies;
  PopularScreenWidget({key});

  @override
  State<PopularScreenWidget> createState() => _PopularScreenWidgetState();
}

class _PopularScreenWidgetState extends State<PopularScreenWidget> {
  // List<Map<String, dynamic>> movies = [
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/ugS5FVfCI3RV0ZwZtBV3HAV75OX.jpg",
  //     "genre_ids": [16, 878, 28],
  //     "id": 610150,
  //     "original_language": "ja",
  //     "original_title": "ドラゴンボール超 スーパーヒーロー",
  //     "overview":
  //         "Red Ribbon Army, một tổ chức độc ác từng bị Goku tiêu diệt trong quá khứ, đã được cải tổ bởi một nhóm người đã tạo ra các Android mới và mạnh hơn, Gamma 1 và Gamma 2, đồng thời tìm cách trả thù Goku và gia đình của anh ta.",
  //     "popularity": 7638.64,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/uohymzBVaIYjbnoQstbnlia6ZPJ.jpg",
  //     "release_date": "2022-06-11",
  //     "title": "Dragon Ball: Super Hero",
  //     "video": false,
  //     "vote_average": 8,
  //     "vote_count": 1352
  //   },
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/jsoz1HlxczSuTx0mDl2h0lxy36l.jpg",
  //     "genre_ids": [28, 12, 14],
  //     "id": 616037,
  //     "original_language": "en",
  //     "original_title": "Thor: Love and Thunder",
  //     "overview":
  //         "Vốn từng là một chiến binh hùng mạnh của Asgard, trải qua vô số trận chiến lớn nhỏ nhưng sau sự kiện trong Avengers: Endgame (2019) cùng vô số mất mát, Thần Sấm không còn muốn theo đuổi con đường siêu anh hùng. Từ đây, anh lên đường tìm ra ý nghĩa của cuộc sống và nhìn nhận lại bản thân mình.",
  //     "popularity": 5371.943,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/xeg0UhMmzSalvyK7kvhTHcKXIf8.jpg",
  //     "release_date": "2022-07-06",
  //     "title": "Thor: Tình Yêu và Sấm Sét",
  //     "video": false,
  //     "vote_average": 6.8,
  //     "vote_count": 2501
  //   },
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/hYZ4a0JvPETdfgJJ9ZzyFufq8KQ.jpg",
  //     "genre_ids": [28, 18, 878],
  //     "id": 629176,
  //     "original_language": "en",
  //     "original_title": "Samaritan",
  //     "overview":
  //         "Một cậu bé biết rằng một siêu anh hùng được cho là đã mất tích sau một trận chiến kinh thiên động địa hai mươi năm trước trên thực tế có thể vẫn còn ở đây.",
  //     "popularity": 4535.782,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg",
  //     "release_date": "2022-08-25",
  //     "title": "Siêu Anh Hùng Samaritan",
  //     "video": false,
  //     "vote_average": 7,
  //     "vote_count": 839
  //   },
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/yaze6df9AMIA9oeDEbIZ4zOTRCJ.jpg",
  //     "genre_ids": [28, 12, 14],
  //     "id": 960700,
  //     "original_language": "ja",
  //     "original_title": "鋼の錬金術師 完結編 復讐者スカー",
  //     "overview": "",
  //     "popularity": 2869.286,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/yTSqYT12q5A9WT0ju9pyHfuiIWi.jpg",
  //     "release_date": "2022-05-20",
  //     "title": "鋼の錬金術師 完結編 復讐者スカー",
  //     "video": false,
  //     "vote_average": 6.7,
  //     "vote_count": 63
  //   },
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/7ZO9yoEU2fAHKhmJWfAc2QIPWJg.jpg",
  //     "genre_ids": [53, 28],
  //     "id": 766507,
  //     "original_language": "en",
  //     "original_title": "Prey",
  //     "overview":
  //         "Lấy bối cảnh 300 trước tại vùng đồng bằng Nam Hoa Kỳ. Tại đây, một sinh vật ngoại lai đến từ ngoài vũ trụ đổ bộ xuống Trái Đất đe dọa cuộc sống của một bộ tộc cổ xưa. Naru, một nữ chiến binh lành nghề, phải dùng mọi kỹ năng của mình để tồn tại cũng như bảo vệ ngôi làng trước mối hiểm họa mà cô chưa từng hiểu biết",
  //     "popularity": 2578.538,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg",
  //     "release_date": "2022-08-02",
  //     "title": "Quái Thú Vô Hình: Săn Mồi",
  //     "video": false,
  //     "vote_average": 8,
  //     "vote_count": 3670
  //   },
  //   {
  //     "adult": false,
  //     "backdrop_path":
  //         "https://image.tmdb.org/t/p/original/xfNHRI2f5kHGvogxLd0C5sB90L7.jpg",
  //     "genre_ids": [16, 28, 10751, 878, 35],
  //     "id": 539681,
  //     "original_language": "en",
  //     "original_title": "DC League of Super-Pets",
  //     "overview":
  //         "Trong “Liên Minh Siêu Thú DC”, Siêu Cún Krypto và Superman là cặp bài trùng không thể tách rời, cùng sở hữu những siêu năng lực tương tự và cùng nhau chiến đấu chống lại tội phạm tại thành phố Metropolis. Khi Superman và những thành viên của Liên Minh Công Lý bị bắt cóc, Krypto phải thuyết phục cậu chàng Ace luộm thuộm, nàng Heo PB, Rùa Merton và Sóc Chip khai phá những sức mạnh tiềm ẩn và cùng nhau giải cứu các siêu anh hùng. “Liên Minh Siêu Thú DC” có sự góp giọng của bộ đôi ngôi sao nổi tiếng bậc nhất Hollywood Dwayne Johnson (lồng tiếng cho Siêu cún Krypto) và Kevin Hart (Superman). Đặc biệt, tài tử Keanu Reeves sẽ đảm nhận những câu thoại chất lừ đến từ Batman.",
  //     "popularity": 2574.379,
  //     "poster_path":
  //         "https://image.tmdb.org/t/p/w500/muw7d3n53CcfuSvatax1FbZEDiW.jpg",
  //     "release_date": "2022-07-27",
  //     "title": "Liên Minh Siêu Thú DC",
  //     "video": false,
  //     "vote_average": 7.6,
  //     "vote_count": 449
  //   }
  // ];

  final _presenter = injector.get<MoviesPresenter>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoviesPresenter, MoviesState>(
      bloc: _presenter,
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
      },
      buildWhen: (previous, current) =>
          previous.listMovie != current.listMovie ||
          previous.status != current.status,
      builder: (context, state) {
        return GridView.builder(
          padding: const EdgeInsets.only(
            top: 31,
            left: 16,
            right: 16,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 18.4,
              crossAxisCount: 2,
              mainAxisExtent: 300,
              mainAxisSpacing: 31),
          itemCount: _presenter.state.listMovie.length,
          //itemCount: 1,
          itemBuilder: (context, index) {
            //return Container();
            return PopularStackImgaeWidget(
                nameImage: "https://image.tmdb.org/t/p/w500/" +
                    _presenter.state.listMovie[index].posterPath!,
                date: _presenter.state.listMovie[index].releaseDate!,
                title: _presenter.state.listMovie[index].title,

                //nameImage:
                // "https://image.tmdb.org/t/p/w500/muw7d3n53CcfuSvatax1FbZEDiW.jpg",
                //     widget.movies[index].posterPath!,
                // date: "test",
                // title: "test",
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => InformationMoviesScreenWidget(
                          movie: _presenter.state.listMovie[index]));
                  Navigator.push(context, route);
                });
          },
        );
      },
    );
  }
}
