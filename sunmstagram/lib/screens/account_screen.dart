import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userEmail ?? "Anonymous"),
            ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
