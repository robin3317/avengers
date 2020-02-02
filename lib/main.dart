import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              title: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              body1: TextStyle(
                fontSize: 23,
                color: Colors.green,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: MyHomePage(title: 'Avengers'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title}) : super();

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/spider_man.jpg');
    Image image = Image(image: assetImage, width: double.infinity);

    AssetImage assetImage2 = AssetImage('images/iron_man.jpg');
    Image image2 = Image(image: assetImage2, width: double.infinity);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Column(children: <Widget>[image, image2]),
    );
  }
}
