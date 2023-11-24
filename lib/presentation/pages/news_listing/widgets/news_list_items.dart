import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/presentation/utils/date_utils.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Card(
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article.urlToImage != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    article.urlToImage!,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(
                height: 4,
              ),
              Column(
                children: [
                  Text(article.title ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      )),
                  if (article.description?.isNotEmpty == true) ...[
                    const SizedBox(
                      height: 2,
                    ),
                    Text(article.description ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black54,
                        )),
                  ],
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          ),
                          child: Text(article.source?.name ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(formatDate(article.publishedAt ?? ''),
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
