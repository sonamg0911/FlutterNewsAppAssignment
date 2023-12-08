import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/presentation/pages/news_details/news_details_page.dart';
import 'package:news_app/presentation/pages/news_listing/news_listing_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NewsListingRoute.page,initial: true),
    AutoRoute(page: NewsDetailRoute.page),
  ];
}