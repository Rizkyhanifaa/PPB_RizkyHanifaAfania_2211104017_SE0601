import 'package:flutter/material.dart';
import 'input_page.dart';
import 'display_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 7 Data Storage',
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/display': (context) => DisplayPage(),
      },
    );
  }
}
