import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_list_response.dart';
import 'package:news_app/presentation/utils/date_utils.dart';

@RoutePage()
class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({super.key, required this.article});

  final Article article;

  @override
  NewsDetailPageState createState() => NewsDetailPageState();
}

class NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
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
              widget.article.title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (widget.article.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.article.urlToImage!,
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
                    child: Text(widget.article.source?.name ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white,
                        ))),
                Text(formatDate(widget.article.publishedAt ?? ''),
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    )),
              ],
            ),
            if (widget.article.description?.isNotEmpty == true) ...[
              const SizedBox(
                height: 10,
              ),
              Text(widget.article.description ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black54,
                  )),
            ],
            if (widget.article.content?.isNotEmpty == true) ...[
              const SizedBox(
                height: 10,
              ),
              Text(widget.article.content ?? '',
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
