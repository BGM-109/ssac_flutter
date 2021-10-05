import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunmstagram/provider/google_sign_in_provider.dart';
import 'package:sunmstagram/screens/create_screen.dart';
import 'package:sunmstagram/screens/home_screen.dart';
import 'package:sunmstagram/screens/initial_screen.dart';
import 'package:sunmstagram/screens/login_screens.dart';
import 'package:sunmstagram/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        initialRoute: InitialScreen.id,
        routes: {
          InitialScreen.id: (context) => const InitialScreen(),
          HomeScreen.id: (context) => const HomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          RegisterScreen.id: (context) => const RegisterScreen(),
          CreateScreen.id: (context) => const CreateScreen(),
        },
        home: const LoginScreen(),
      ),
    );
  }
}
