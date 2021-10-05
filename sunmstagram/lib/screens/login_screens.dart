import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunmstagram/components/custom_button.dart';
import 'package:sunmstagram/constants.dart';
import 'package:sunmstagram/screens/home_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  String? email;
  String? password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: customInputDecoration.copyWith(
                    labelText: "Email", hintText: "Enter ur Email"),
                onChanged: (text) {
                  email = text;
                },
              ),
              TextField(
                  obscureText: true,
                  decoration: customInputDecoration.copyWith(
                      labelText: "Password", hintText: "Enter ur Password"),
                  onChanged: (text) {
                    password = text;
                  }),
              const SizedBox(
                height: 24.0,
              ),
              CustomButton(
                icon: const FaIcon(FontAwesomeIcons.signInAlt),
                title: "Login",
                color: Colors.black54,
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email!, password: password!);
                    if (user != null) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          HomeScreen.id, (Route<dynamic> route) => false);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
