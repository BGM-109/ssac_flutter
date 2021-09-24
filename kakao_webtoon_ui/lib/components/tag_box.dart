import 'package:flutter/material.dart';

class TagBox extends StatelessWidget {
  const TagBox({Key? key, required this.tag}) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(tag));
  }
}
