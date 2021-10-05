import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunmstagram/components/custom_button.dart';
import 'package:sunmstagram/constants.dart';
import 'package:sunmstagram/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String id = "register_screen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _auth = FirebaseAuth.instance;

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            decoration: customInputDecoration.copyWith(
              labelText: "Email",
            ),
            onChanged: (text) {
              email = text;
            },
          ),
          TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: customInputDecoration.copyWith(
              labelText: "Password",
            ),
            onChanged: (text) {
              password = text;
            },
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomButton(
            icon: const FaIcon(FontAwesomeIcons.signInAlt),
            title: "Register",
            color: Colors.black54,
            onPressed: () async {
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email!, password: password!);
                if (newUser != null) {
                  Navigator.pushNamed(context, HomeScreen.id);
                }
              } catch (e) {
                print(e);
              }
            },
          ),
        ],
      ),
    ));
  }
}
