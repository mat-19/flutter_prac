import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/emi/emi.dart';

import 'package:flutter_application_3/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: _Testapp(),
  ));
}

class _Testapp extends StatefulWidget {
  const _Testapp({Key? key}) : super(key: key);

  @override
  __TestappState createState() => __TestappState();
}

class __TestappState extends State<_Testapp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        // if (snapshot.hasError) {
        //   return SomethingWentWrong();
        // }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return EmiShow();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container(
          child: Text('Loading'),
        );
      },
    );
  }
}
