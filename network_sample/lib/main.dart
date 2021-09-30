import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:network_sample/provider/post_data_provider.dart';
import 'package:network_sample/screens/provider_demo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<PostDataProvider>(
      create: (context) => PostDataProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(),
      home: const ProviderDemoScreen(),
    );
  }
}
//
// providers: [
// ChangeNotifierProvider(
// create: (_) => AjaxProvider(),
// )
// ],
