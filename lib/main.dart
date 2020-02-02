import 'package:flutter/material.dart';
import './avenger.dart';

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

  final avengers = [
    {'name': 'Black Panther', 'imgSrc': 'images/black_pahter.jpg'},
    {'name': 'Captain Marvel', 'imgSrc': 'images/captain_marvel.jpg'},
    {'name': 'Iron Man', 'imgSrc': 'images/iron_man.jpg'},
    {'name': 'Thanos', 'imgSrc': 'images/thanos.jpg'},
    {'name': 'Spider Man', 'imgSrc': 'images/spider_man.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: avengers.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Avenger(avengers[index]['name'], avengers[index]['imgSrc']);
          }),
    );
  }
}
