//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/component/ProCard.dart';

import 'package:flutter_application_3/component/TopCard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              TopCard(),
              ProCard(
                  placeName: 'St.Marks Basilicia',
                  description: 'Sightseeing Tour',
                  image: 'images/basilica.jpg',
                  price: 30),
              ProCard(
                  placeName: 'St.Marks Basilicia',
                  description: 'Sightseeing Tour',
                  image: 'images/basilica.jpg',
                  price: 30),
              ProCard(
                  placeName: 'St.Marks Basilicia',
                  description: 'Sightseeing Tour',
                  image: 'images/basilica.jpg',
                  price: 30),
              ProCard(
                  placeName: 'St.Marks Basilicia',
                  description: 'Sightseeing Tour',
                  image: 'images/basilica.jpg',
                  price: 30),
            ],
          ),
        ),
      ),
    );
  }
}
