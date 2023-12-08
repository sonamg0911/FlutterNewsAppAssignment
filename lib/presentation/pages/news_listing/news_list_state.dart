import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/news_list_response.dart';
part 'news_list_state.freezed.dart';

@freezed
class NewsListState with _$NewsListState {
  const factory NewsListState.loading() = NewsListLoading;
  const factory NewsListState.loaded(List<Article> list) = NewsListLoaded;
  const factory NewsListState.error(String errorMessage) = NewsListError;
}