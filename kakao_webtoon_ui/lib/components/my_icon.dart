
import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(icon),
    );
  }
}