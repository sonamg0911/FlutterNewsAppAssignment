import 'dart:async';

import '../../data/model/news_list_response.dart';

abstract class INewsRepo {
  FutureOr<NewsListResponse?> getNews({
    required String country,
    required int page,
    required int pageSize,
    required String apiKey,
  });
}
