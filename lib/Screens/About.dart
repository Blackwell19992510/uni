import 'package:flutter/material.dart';
import 'package:uni/Screens/homepage.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Homepage(),
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: const Center(
          // add your code here
          ),
    );
  }
}
