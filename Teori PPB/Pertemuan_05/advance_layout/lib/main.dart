import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Week 5 - Andvance Layout',
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
                  "Home page",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            // Halaman kedua
            Container(
              child: Center(
                child: Text(
                  "Email page",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            // Halaman ketiga
            Container(
              child: Center(
                child: Text(
                  "Profile page",
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Email',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
