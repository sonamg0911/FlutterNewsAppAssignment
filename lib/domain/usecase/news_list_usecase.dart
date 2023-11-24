import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/di/di_config.dart';
import 'package:news_app/domain/repository/i_news_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/pigeon.dart';

@devEnv
@prodEnv
@testEnv
@injectable
class NewsListUseCase {
  final INewsRepo newsRepo;

  NewsListUseCase(this.newsRepo);

  Future<NewsListResponse?> getNews(
      {String country = 'in', required int page, int pageSize = 10}) async {
    final apiKey = await IKeys().getApiKey() ?? '';
    return await newsRepo.getNews(
      country: country,
      page: page,
      pageSize: pageSize,
      apiKey: apiKey,
    );
  }
}
