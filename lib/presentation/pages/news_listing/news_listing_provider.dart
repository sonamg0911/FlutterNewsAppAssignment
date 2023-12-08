import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/di/di_config.dart';
import 'package:news_app/domain/usecase/news_list_usecase.dart';
import 'package:news_app/presentation/pages/news_listing/news_list_state.dart';

class NewsListProvider extends ChangeNotifier {
  NewsListState _state = const NewsListLoading();

  get state => _state;
  int _pageNumber = 1;
  int _totalArticles = 0;
  final List<Article> _articles = [];
  bool _showOldFirst = false;
  final List<String> appliedFilteredKeys = [];
  Map<String, List<Article>> articleMap = HashMap();
  final List<Article> _filteredArticles = [];

  void sortExistingArticleList() {
    _showOldFirst = !_showOldFirst;
    if (_showOldFirst) {
      _articles.sort((a, b) => a.publishedAt!.compareTo(b.publishedAt!));
      _filteredArticles.sort((a, b) => a.publishedAt!.compareTo(b.publishedAt!));
    } else {
      _articles.sort((a, b) => b.publishedAt!.compareTo(a.publishedAt!));
      _filteredArticles.sort((a, b) => b.publishedAt!.compareTo(a.publishedAt!));
    }
    if(_filteredArticles.isNotEmpty){
      _state = NewsListLoaded(_filteredArticles);
    }else {
      _state = NewsListLoaded(_articles);
    }
    notifyListeners();
  }

  void _createMapForArticles(List<Article> articles) {
    articleMap.clear();
    for (var article in articles) {
      if (article.source?.name?.isNotEmpty == true) {
        if (articleMap.containsKey(article.source?.name!) && !articleMap[article.source?.name]!.contains(article)) {
          articleMap[article.source!.name]?.add(article);
        } else {
          articleMap[article.source!.name!] = [article];
        }
      }
    }
  }

  void showFilteredList() {
    _filteredArticles.clear();
    articleMap.forEach((key, articles) {
      if (appliedFilteredKeys.contains(key)) {
        for (var article in articles) {
          _filteredArticles.add(article);
        }
      }
    });
    _state = NewsListLoaded(_filteredArticles);
    notifyListeners();
  }

  void getNews({bool loadMore = false}) async {
    try {
      if (loadMore) {
        // increase pageNumber for fetching more data only if all data is not fetched
        if (_articles.length < _totalArticles) {
          _pageNumber++;
        } else {
          return;
        }
      } else {
        // clear all and load from start
        _articles.clear();
        _filteredArticles.clear();
        _pageNumber = 1;
      }
      final NewsListResponse? response = await getIt<NewsListUseCase>().getNews(
        page: _pageNumber,
      );
      _totalArticles = response?.totalResults ?? 0;
      _articles.addAll(response?.articles ?? []);
      _createMapForArticles(_articles);
      if(_filteredArticles.isNotEmpty){
        showFilteredList();
      }else {
        _state = NewsListLoaded(_articles);
        notifyListeners();
      }
    } catch (e) {
      _state = NewsListError(e.toString());
      notifyListeners();
    }
  }
}
