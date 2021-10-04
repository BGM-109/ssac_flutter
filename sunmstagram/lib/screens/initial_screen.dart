import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunmstagram/components/custom_button.dart';
import 'package:sunmstagram/screens/login_screens.dart';
import 'package:sunmstagram/screens/register_screen.dart';

// Login 정보가 있으면 홈스크린 그렇지 않으면 그대로

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);
  static String id = "initial_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("📷 Sunm Stagram",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              )),
          const SizedBox(
            height: 32.0,
          ),
          CustomButton(
            title: "Login",
            color: Colors.black54,
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          CustomButton(
            title: "Register",
            color: Colors.black54,
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.id);
            },
          ),
          CustomButton(
            title: "Sign in Google",
            color: Colors.redAccent,
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
