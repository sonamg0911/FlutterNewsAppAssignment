import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/presentation/utils/date_utils.dart';

class NewsDetailPage extends StatefulWidget {
  static const path = "/details";

  const NewsDetailPage({super.key});

  @override
  NewsDetailPageState createState() => NewsDetailPageState();
}

class NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (article.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  article.urlToImage!,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text(formatDate(article.publishedAt ?? ''),
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    )),
              ],
            ),
            if (article.description?.isNotEmpty == true) ...[
              const SizedBox(
                height: 10,
              ),
              Text(article.description ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black54,
                  )),
            ],
            if (article.content?.isNotEmpty == true) ...[
              const SizedBox(
                height: 10,
              ),
              Text(article.content ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
