//import 'dart:html';

import 'package:flutter/material.dart';

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
        //   appBar: AppBar(
        //     backgroundColor: Colors.transparent,
        //     leading: Icon(Icons.arrow_back),
        //     actions: [
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 20),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Icon(Icons.search),
        //     SizedBox(
        //       width: 20,
        //     ),
        //     Icon(Icons.menu),
        //   ],
        // ),
        //       ),
        //     ],
        //   ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(
                // width: MediaQuery.of(context).size.width - 20,
                // height: MediaQuery.of(context).size.width - 20,
                child: Stack(children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage("images/venice.jpg"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 10.0,
                          spreadRadius: 8.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          //Colors.black12,
                          Colors.black87
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 28,
                      child: Padding(
                          padding: EdgeInsets.all(36.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Venice',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.near_me,
                                        size: 15,
                                        color: Colors.grey.shade600,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Italy',
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 20)),
                                      //Expanded(child: Column(children: [])),
                                    ],
                                  ),
                                  Row(children: [
                                    Icon(
                                      Icons.map,
                                      size: 35,
                                      color: Colors.grey.shade600,
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.menu),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
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

class ProCard extends StatelessWidget {
  final String placeName;
  final String description;
  final String image;
  final double price;

  const ProCard(
      {Key? key,
      required this.placeName,
      required this.description,
      required this.image,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Container(
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placeName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 40,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 40,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    " $price",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'per pax',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
