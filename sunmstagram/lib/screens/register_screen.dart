import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Register"),
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
        ElevatedButton(
          child: const Text("Register"),
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
        )
      ],
    ));
  }
}
