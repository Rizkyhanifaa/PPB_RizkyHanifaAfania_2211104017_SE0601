import 'package:flutter/material.dart';
import 'package:petemuan9/image_picker_screen.dart';
import 'package:petemuan9/myapi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 9',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyApiPage(),
      home: ImageFromGalleryEx(ImageSourceType.camera),
    );
  }
}
