
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunmstagram/screens/login_screens.dart';
import 'package:sunmstagram/screens/register_screen.dart';


// Login 정보가 있으면 홈스크린 그렇지 않으면 그대로

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);
  static String id = "initial_screen";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("📷 Sunm Stagram",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              child: const Text("Register"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign in google"),
            ),
          ],
        ),
      )
    );
  }
}
