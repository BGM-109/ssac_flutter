import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      this.color = Colors.white,
      required this.onPressed})
      : super(key: key);
  final String title;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40.0),
        primary: color,
        onPrimary: Colors.white,
        textStyle: const TextStyle(fontSize: 16),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Text(title,),
        ],
      ),
    );
  }
}
