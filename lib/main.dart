import 'package:dicoding_news_app/ui/article_detail_page.dart';
import 'package:dicoding_news_app/ui/home_page.dart';
import 'package:dicoding_news_app/styles.dart';
import 'package:dicoding_news_app/ui/article_web_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(
            textTheme: myTextTheme.apply(bodyColor: Colors.black),
            elevation: 0),
//        bottomNavigationBarTheme: BottomNavigationBarThemeData(
//          selectedItemColor: secondaryColor,
//          unselectedItemColor: Colors.grey,
//        ),
        buttonTheme: ButtonThemeData(
            buttonColor: secondaryColor,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
          article: ModalRoute.of(context).settings.arguments,
        ),
        ArticleWebView.routeName: (context) => ArticleWebView(
          url: ModalRoute.of(context).settings.arguments,
        ),
      },
    );
  }
}
