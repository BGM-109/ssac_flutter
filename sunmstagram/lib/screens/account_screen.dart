import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sunmstagram/components/logged_in_widget.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key, this.userEmail}) : super(key: key);
  final _auth = FirebaseAuth.instance;
  final String? userEmail; // Provider 에서 받아올

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("blackpink",
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [],
      ),
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return LoggedInWidget();
            } else if (snapshot.hasError) {
              return Center(child: Text("Error"));
            } else {
              return Center(child: Text("Need Login"));
            }
          }),
    );
  }
}
