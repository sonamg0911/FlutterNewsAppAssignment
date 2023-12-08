import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_list_response.freezed.dart';

part 'news_list_response.g.dart';

@freezed
class NewsListResponse with _$NewsListResponse {
  factory NewsListResponse({
    required String status,
    required int totalResults,
    List<Article>? articles,
  }) = _NewsListResponse;

  factory NewsListResponse.fromJson(Map<String, Object?> json) => _$NewsListResponseFromJson(json);
}

@freezed
class Article with _$Article {
  factory Article(
      {Source? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content}) = _Article;

  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  factory Source({
    String? id,
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, Object?> json) => _$SourceFromJson(json);
}
