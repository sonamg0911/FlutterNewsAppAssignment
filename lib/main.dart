import 'package:flutter/material.dart';
import 'package:news_app/presentation/pages/news_details/news_details_page.dart';
import 'package:news_app/presentation/pages/news_listing/news_listing_page.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme:
            _themeData.textTheme.apply(fontFamily: "Barlow", bodyColor: Colors.black, displayColor: Colors.black38),
        primaryTextTheme: _themeData.primaryTextTheme
            .apply(fontFamily: "Barlow", bodyColor: Colors.black, displayColor: Colors.black38),
      ),
      routes: {
        NewsListingPage.path: (_) => const NewsListingPage(),
        NewsDetailPage.path: (_) => const NewsDetailPage(),
      },
    );
  }
}
