import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/component/ProCard.dart';
import 'package:flutter_application_3/component/TopCard.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<Widget> cards = [];
  @override
  void initState() {
    super.initState();
    firestore.collection("places").snapshots().listen((value) {
      setState(() {
        cards.clear();
      });
      value.docs.forEach((element) {
        setState(() {
          cards.add(ProCard(
            placeName: element.data()["name"],
            description: element.data()["description"],
            image: element.data()["image"],
            price: element.data()["price"].toDouble(),
          ));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              TopCard(),
              Column(
                children: cards,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
