import 'package:dicoding_news_app/common/navigation.dart';
import 'package:dicoding_news_app/data/model/article.dart';
import 'package:dicoding_news_app/ui/article_detail_page.dart';
import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final Article article;
  final Function onPressed;

  const CardArticle({Key key, @required this.article, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: article.urlToImage == null
            ? Container(width: 100, child: Icon(Icons.error))
            : Hero(
                tag: article.urlToImage,
                child: Image.network(article.urlToImage, width: 100),
              ),
        title: Text(article.title ?? ""),
        subtitle: Text(article.author ?? ""),
        onTap: () => Navigation.intentWithData(ArticleDetailPage.routeName, article),
      ),
    );
  }
}