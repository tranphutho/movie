import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feature/movies_screen/bloc/movies_presenter.dart';
import 'package:movie/feature/movies_screen/bloc/movies_state.dart';
import 'package:movie/injector/injector.dart';

import '../form_status.dart';
import '../popular_screen/popular_screen.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen>
    with TickerProviderStateMixin {
  final _presenter = injector.get<MoviesPresenter>();
  late TabController? controller;
  //late MoviesViewModel viewModel = MoviesViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //viewModel.initState();
    controller = TabController(length: 2, vsync: this);
    //ref.read(moviesViewModelProvider.notifier).initState();
    _presenter.onInitState();
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
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //abc
    //controller.dispose();
  }
}
