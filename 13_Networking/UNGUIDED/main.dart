import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul13/view/my_home_page.dart';
import 'package:modul13/view/page_tambah_catatan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/add', page: () => PageTambahCatatan()),
      ],
    );
  }
}
