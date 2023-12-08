import 'package:flutter/material.dart';
import 'package:news_app/presentation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di/di_config.dart';

void main() {
  configureDependencies(Env.development);
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _themeData = ThemeData();
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme:
            _themeData.textTheme.apply(fontFamily: "Barlow", bodyColor: Colors.black, displayColor: Colors.black38),
        primaryTextTheme: _themeData.primaryTextTheme
            .apply(fontFamily: "Barlow", bodyColor: Colors.black, displayColor: Colors.black38),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
