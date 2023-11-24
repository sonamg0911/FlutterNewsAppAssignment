import 'dart:async';

import 'package:news_app/data/model/news_list_response.dart';
import 'package:injectable/injectable.dart';
import '../../data/services/api_services.dart';
import '../../di/di_config.dart';
import 'i_news_repo.dart';

@devEnv
@prodEnv
@Injectable(as: INewsRepo)
class NewsRepo extends INewsRepo {
  @override
  Future<NewsListResponse?> getNews({
    required String country,
    required int page,
    required int pageSize,
    required String apiKey,
  }) async {
    return await getIt<ApiServices>().getNews(
      country: country,
      page: page,
      pageSize: pageSize,
      apiKey: apiKey,
    );
  }
}
