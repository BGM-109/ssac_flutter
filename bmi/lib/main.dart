import 'package:bmi/screens/input_screen.dart';
import 'package:flutter/material.dart';


// MY STYLE
const myPrimaryColor = Color(0xFF394A64);
const myCardColor = Color(0xFFDEE4EC);


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: myPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: const InputScreen() ,
    );
  }
}
