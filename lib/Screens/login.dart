import 'package:flutter/material.dart';
import 'package:uni/Screens/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 235, 182),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 25,
        ),
        const Icon(
          Icons.lock,
          size: 60,
          color: Colors.green,
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
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
          height: 0,
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
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
          padding: EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("forgot password?"),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: 270,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: const Text("LOGIN")),
        ),
      ]),
    );
  }
}
