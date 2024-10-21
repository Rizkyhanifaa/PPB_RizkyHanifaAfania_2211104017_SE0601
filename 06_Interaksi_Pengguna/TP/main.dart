import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP 6 Interaksi Pengguna',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0; // Untuk menyimpan index halaman aktif
  PageController _pageController = PageController();

  // Fungsi untuk mengganti halaman saat item bottom navigation di klik
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index); // Pindah ke halaman sesuai dengan index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Latihan BottomNavigationBar',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),

      // BODY
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            // Halaman pertama
            Container(
              child: Center(
                child: Text(
                  "Ini Halaman Beranda",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            // Halaman kedua
            Container(
              child: Center(
                child: Text(
                  "Ini Halaman Wisata",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            // Halaman ketiga
            Container(
              child: Center(
                child: Text(
                  "Ini Halaman Profile",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Posisi page saat ini
        onTap: onTabTapped, // Agar pindah page saat di klik
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: 'Wisata',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: const Color.fromARGB(255, 131, 128, 128),
        //backgroundColor: Colors.orange,
      ),
    );
  }
}
