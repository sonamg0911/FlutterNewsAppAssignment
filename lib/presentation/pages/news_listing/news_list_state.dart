import 'package:news_app/data/model/news_list_response.dart';

abstract class NewsListState {
  const NewsListState();
}

class NewsListLoading extends NewsListState {}

class NewsListLoaded extends NewsListState {
  final List<Article> list;

  const NewsListLoaded(this.list);
}

class NewsListError extends NewsListState {
  final String errorMessage;

  const NewsListError(this.errorMessage);
}
