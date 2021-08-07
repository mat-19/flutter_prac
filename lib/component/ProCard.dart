import 'package:flutter/material.dart';

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
