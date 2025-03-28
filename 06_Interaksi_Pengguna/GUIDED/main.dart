import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_interaksi_pengguna/my_package.dart';
import 'package:modul_interaksi_pengguna/my_tabbar.dart';
import 'package:modul_interaksi_pengguna/my_bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),

      home: MyBottomnav(),
      //home: MyTabbar(),
      //home: const MyPackage(),
    );
  }
}
