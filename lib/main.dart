import 'package:flutter/material.dart';
import 'package:uni/Screens/home_screen.dart';

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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
} // This trailing comma makes auto-formatting nicer for build methods.

