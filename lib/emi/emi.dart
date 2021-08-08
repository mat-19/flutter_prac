import 'package:flutter/material.dart';
import 'dart:math';

class EmiShow extends StatefulWidget {
  const EmiShow({Key? key}) : super(key: key);

  @override
  _EmiShowState createState() => _EmiShowState();
}

class _EmiShowState extends State<EmiShow> {
  double p = 0.0;
  double r = 0.0;
  double n = 0.0;
  int e = 0;
  calculate() {
    print(p);
    print(r);
    print(n);
    e = (p * r * (pow(1 + r, n) / (pow(1 + r, n) - 1))).round();
  }

  @override
  Widget build(BuildContext context) {
    //calculate();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Principal amount'),
              onChanged: (value) {
                setState(() {
                  p = double.parse(value);
                });
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'RoI'),
              onChanged: (value) {
                setState(() {
                  r = double.parse(value);
                  r = r / 1200;
                });
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Tenure'),
              onChanged: (value) {
                setState(() {
                  n = double.parse(value);
                });
              },
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  calculate();
                });
              },
              child: Text('Calculate'),
              color: Colors.blue,
            ),
            Text(e.toString())
          ],
        ),
      ),
    );
  }
}
