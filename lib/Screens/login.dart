import 'package:flutter/material.dart';
import 'package:uni/Screens/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 25,
        ),
        const Icon(
          Icons.lock,
          size: 60,
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: false,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("forgot password?"),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Homepage()));
            },
            child: const Text("LOGIN")),
      ]),
    );
  }
}
