import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  final double price;
  final String name;
  SingleProduct({this.image, this.name, this.price});
  @override
  Widget build(BuildContext context) {
    double width, height;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Card(
      child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Container(
            height: height * 0.2 + 25,
            width: width * 0.2 * 2 + 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Expanded(
            flex: 3,
            child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
            width: 160,
            decoration: BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(image),
            ),
            ),
            ),
            ),
            ),
            Expanded(
            child: Column(
            children: [
    Text(
    "\Rs ${(price*74).toString()}",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: Color(0xff9b96d6)),
    ),
    Container(
    child: Text(
    name,
    style: TextStyle(fontSize: 15),
    ),
    )
    ],
    ),
    ),
    ],
    ),
    ),
          )
        )

    );
  }
}
