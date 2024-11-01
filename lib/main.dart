import 'package:flutter/material.dart';
import 'package:unit7assignmentfeliciano/screens/about_me.dart';
import 'package:unit7assignmentfeliciano/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff2e3e6)), 
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => About_Me(), 
      },
    );
  }
}
