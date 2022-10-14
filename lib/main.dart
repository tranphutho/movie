import 'package:flutter/material.dart';
import 'package:movie/feature/data/model/cast_model.dart';
import 'package:movie/feature/information_movies_screen/bloc/casts_module.dart';
import 'package:movie/feature/movies_screen/bloc/movies_module.dart';

import 'feature/movies_screen/movies_screen.dart';
import 'injector/app_module.dart';
import 'injector/injector.dart';

void main() {
  DependencyManager.inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MoviesScreen(),
    );
  }
}

class DependencyManager {
  static Future<void> inject() async {
    // App Flavor
    injector.registerLazySingleton;

    // App modules
    await AppModules.inject();

    await MoviesModule.inject();

    await CastsModule.inject();
  }
}
