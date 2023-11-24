// To parse this JSON data, do
//
//     final newsListResponse = countryListResponseFromJson(jsonString);

import 'dart:convert';

List<NewsListResponse> newsListResponseFromJson(String str) => List<NewsListResponse>.from(json.decode(str).map((x) => NewsListResponse.fromJson(x)));

String newsListResponseToJson(List<NewsListResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsListResponse {
  NewsListResponse({
   this.status,
    this.totalResults = 0,
    this.articles,
  });

  final String? status;
  final int totalResults;
  final List<Article>? articles;


  factory NewsListResponse.fromJson(Map<String, dynamic> json) => NewsListResponse(
    status: json["status"],
    totalResults: json["totalResults"],
    articles: json["articles"] == null ? null : List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),

  );

  Map<String, dynamic> toJson() => {
    "status":  status,
    "totalResults": totalResults,
    "articles": articles == null ? null : List<dynamic>.from(articles!.map((x) => x)),

  };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;


  factory Article.fromJson(Map<String, dynamic> json) => Article(
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    author: json["author"],
    title: json["title"],
    description: json["description"],
    url: json["url"],
    urlToImage: json["urlToImage"],
    publishedAt: json["publishedAt"],
    content: json["content"],

  );

  Map<String, dynamic> toJson() => {
    "source": source,
    "author": author,
    "title": title,
    "description": description,
    "url": url,
    "urlToImage": urlToImage,
    "publishedAt": publishedAt,
    "content": content,
  };
}



class Source {
  Source({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id":  id,
    "name": name,
  };
}

