import 'package:flutter/material.dart';
import 'package:sunmstagram/screens/create_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CreateScreen.id);
              },
              icon: const Icon(
                Icons.add_box_outlined,
              ),
            )
          ],
          actionsIconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: const Center(
          child: Text("Main"),
        ));
  }
}
