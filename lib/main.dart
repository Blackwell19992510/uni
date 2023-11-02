import 'package:flutter/material.dart';
import 'package:uni/Screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'uni',
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
} // This trailing comma makes auto-formatting nicer for build methods.

