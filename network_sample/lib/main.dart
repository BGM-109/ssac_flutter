import 'package:flutter/material.dart';
import 'package:network_sample/provider/ajax_provider.dart';
import 'package:get/get.dart';
import 'package:network_sample/screens/listview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(),
      home: const ListViewScreen(),
    );
  }
}
//
// providers: [
// ChangeNotifierProvider(
// create: (_) => AjaxProvider(),
// )
// ],