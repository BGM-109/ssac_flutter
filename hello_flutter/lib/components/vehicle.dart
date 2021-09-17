import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  Vehicle({this.name, this.imageUrl = "assets/taxi.png"});

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(imageUrl),
          width: 75.0,
        ),
        Text(name),
      ],
    );
  }
}
