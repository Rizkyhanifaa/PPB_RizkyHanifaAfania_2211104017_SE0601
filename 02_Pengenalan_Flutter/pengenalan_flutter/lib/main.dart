import 'package:flutter/material.dart';

void main() {
  runApp(Aplikasi());
}

class Aplikasi extends StatelessWidget {
  const Aplikasi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Informasi Mahasiswa",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          toolbarHeight: 60, //Mengatur tinggi appBar
          backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildInfoBox("Nama: Rizky Hanifa Afania"),
              buildInfoBox("NIM: 2211104017"),
              buildInfoBox("Kelas: SE-06-01"),
              buildInfoBox("Prodi: Rekayasa Perangkat Lunak"),
              buildInfoBox("Fakultas: Informatika"),
            ],
          ),
        ),
      ),
    );
  }
}

// Fungsi untuk membuat kotak informasi
Widget buildInfoBox(String title) {
  return Container(
    margin: const EdgeInsets.symmetric(
        vertical: 5.0), // Untuk mengatur jarak antar kotak
    padding: const EdgeInsets.all(16.0), // Untuk mengatur padding dalam kotak
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 244, 241),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          // Untuk memberi garis tepi/border di box
          color: const Color.fromRGBO(255, 193, 7, 1),
          width: 1.0, //Mengatur ketebalan garis tepi
        )),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    ),
  );
}
