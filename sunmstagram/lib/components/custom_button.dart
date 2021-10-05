import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      this.color = Colors.white,
      required this.icon,
      required this.onPressed})
      : super(key: key);
  final String title;
  final Color color;
  final Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        primary: color,
        onPrimary: Colors.white,
      ),
      onPressed: onPressed,
      icon: icon,
      label: Text(title),
    );
  }
}
