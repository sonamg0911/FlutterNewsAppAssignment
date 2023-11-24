import 'package:flutter/material.dart';
import 'package:news_app/presentation/pages/news_details/news_details_page.dart';
import 'package:news_app/presentation/pages/news_listing/news_list_state.dart';
import 'package:news_app/presentation/pages/news_listing/news_listing_provider.dart';
import 'package:news_app/presentation/pages/news_listing/widgets/news_list_items.dart';
import 'package:news_app/presentation/utils/string_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/presentation/widgets/custom_error_widget.dart';
import 'widgets/news_listing_filter.dart';

class NewsListingPage extends ConsumerStatefulWidget {
  static const path = "/";

  const NewsListingPage({super.key});

  @override
  NewsListingPageState createState() => NewsListingPageState();
}

class NewsListingPageState extends ConsumerState<NewsListingPage> {
  final apiProvider = ChangeNotifierProvider<NewsListProvider>((ref) {
    return NewsListProvider();
  });

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        ref.read(apiProvider).getNews(loadMore: true);
      }
    });
    ref.read(apiProvider).getNews(loadMore: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NewsListState state = ref.watch(apiProvider).state;

    return Scaffold(
        appBar: AppBar(
          title: const Text(NewsAppString.topNews,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          actions: <Widget>[
            Tooltip(
              message: NewsAppString.sortByPublishedDate,
              child: IconButton(
                icon: const Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
                onPressed: () {
                  ref.read(apiProvider).sortExistingArticleList();
                },
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.filter_alt,
                color: Colors.black,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return NewsListingFilter(
                        filterKeys: ref.read(apiProvider).articleMap.keys.toList(),
                        selectedFilterKeys: ref.read(apiProvider).appliedFilteredKeys,
                        onApply: () {
                          Navigator.pop(this.context);
                          if (ref.read(apiProvider).appliedFilteredKeys.isEmpty) {
                            ref.read(apiProvider).getNews();
                          } else {
                            ref.read(apiProvider).showFilteredList();
                          }
                        },
                      );
                    });
              },
            ),
          ],
        ),
        body: Builder(builder: (BuildContext context) {
          if (state is NewsListLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is NewsListLoaded) {
            return ListView.builder(
              controller: scrollController,
              itemCount: state.list.length,
              itemBuilder: (context, itemNumber) {
                final news = state.list.elementAt(itemNumber);
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(NewsDetailPage.path, arguments: news);
                  },
                  child: NewsListItem(
                    article: news,
                  ),
                );
              },
            );
          } else if (state is NewsListError) {
            return CustomErrorWidget(
              onPressed: () {
                ref.read(apiProvider).getNews(loadMore: false);
              },
            );
          } else {
            return CustomErrorWidget(
              onPressed: () {
                ref.read(apiProvider).getNews(loadMore: false);
              },
            );
          }
        }));
  }
}
