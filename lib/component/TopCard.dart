import 'package:flutter/material.dart';
import 'package:flutter_application_3/global.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              fit: BoxFit.cover,
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
            width: width(context) - 28,
            child: Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
