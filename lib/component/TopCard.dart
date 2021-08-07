import 'package:flutter/material.dart';
import 'package:flutter_application_3/global.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(padding - 16),
          padding: EdgeInsets.all(padding - 26),
          width: width(context),
          height: width(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10.0,
                spreadRadius: 8.0,
              ),
            ],
            image: DecorationImage(
              image: AssetImage('images/venice.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(padding - 16),
          padding: EdgeInsets.all(padding - 26),
          width: width(context),
          height: width(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.black.withAlpha(0), Colors.black],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.menu),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Venice',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  color: Colors.grey.shade600, fontSize: 20)),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
