import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:client_server/model/article.dart';
import 'package:client_server/ui/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: ListTile(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Hero(
            tag: article.urlToImage,
            child: Image.network(
              article.urlToImage,
              width: 100,
            ),
          ),
          title: Text(article.title),
          subtitle: Text(article.author),
          onTap: () => Navigator.pushNamed(context, ArticleDetailPage.routeName,
              arguments: article),
        ));
  }
}