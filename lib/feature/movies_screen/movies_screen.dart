import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../popular_screen/popular_screen.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen>
    with TickerProviderStateMixin {
  late TabController? controller;
  //late MoviesViewModel viewModel = MoviesViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //viewModel.initState();
    controller = TabController(length: 2, vsync: this);
    //ref.read(moviesViewModelProvider.notifier).initState();
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(moviesViewModelProvider);
    // if (state.movies == null || state.movies!.isEmpty) {
    //   return const Scaffold(
    //     body: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // }
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: [
            Tab(
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Tab(
              child: Text(
                "Nowplaying",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
          controller: controller,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        Expanded(
          child: TabBarView(controller: controller, children: [
            PopularScreenWidget(),
            Text("Now Playin"),
          ]),
        )
      ],
    )));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //controller.dispose();
  }
}
