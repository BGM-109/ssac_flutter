import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sunmstagram/components/custom_button.dart';
import 'package:sunmstagram/provider/google_sign_in_provider.dart';
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
          const FlutterLogo(
            size: 120.0,
            duration: Duration(seconds: 3),
          ),
          const SizedBox(height: 32.0),
          const Text("Hey there, \nWelcome back",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              )),
          const SizedBox(height: 8.0),
          const Text("Login to your account to continue"),
          const SizedBox(height: 32.0),
          CustomButton(
            icon: const FaIcon(FontAwesomeIcons.envelope),
            title: "Login",
            color: Colors.black54,
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          const SizedBox(height: 8.0),
          CustomButton(
            icon: const FaIcon(FontAwesomeIcons.registered),
            title: "Register",
            color: Colors.black54,
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.id);
            },
          ),
          const SizedBox(height: 8.0),
          CustomButton(
            icon: const FaIcon(FontAwesomeIcons.google),
            title: "Sign with Google",
            color: Colors.redAccent,
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.googleLogin();
            },
          ),
        ],
      ),
    ));
  }
}
