import 'package:antarmuka_lanjuran/FLutter_expanded.dart';
import 'package:flutter/material.dart';
import 'custom_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antarmuka Lanjutan - Pertemuan 5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CustomScrollViewScreen(),
      //home: FlexibleExpendedScreen(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  
}
