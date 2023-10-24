import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("LOGIN"))
        ],
      ),
    );
  }
}
