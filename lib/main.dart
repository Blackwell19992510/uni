import 'package:flutter/material.dart';
import 'package:uni/Screens/about.dart';
import 'package:uni/Screens/faculty.dart';
import 'package:uni/Screens/admission.dart';
import 'package:uni/Screens/academics.dart';
import 'package:uni/Screens/contacts.dart';
import 'package:uni/Screens/home.dart';
import 'package:uni/Screens/profile.dart';
import 'package:uni/Screens/registration.dart';
import 'package:uni/Screens/search.dart';
import 'package:uni/Screens/settings.dart';
import 'package:uni/Screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uni',
      home: const Splashscreen(),
      routes: {
        //  '/': (context) => const Splashscreen(),
        '/home': (context) => const Homescreen(),
        '/profile': (context) => const Profile(),
        '/search': (context) => const Search(),
        '/settings': (context) => const Settings(),
        '/about': (context) => const About(),
        '/faculty': (context) => const Faculty(),
        '/admission': (context) => const Admission(),
        '/academics': (context) => const Academics(),
        '/contacts': (context) => const Contacts(),
        '/registration': (context) => const Registration(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
} // This trailing comma makes auto-formatting nicer for build methods.

