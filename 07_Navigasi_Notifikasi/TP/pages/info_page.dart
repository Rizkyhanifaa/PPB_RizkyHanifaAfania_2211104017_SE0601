import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Mahasiswa'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Nama: Rizky Hanifa Afania',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: 2211104017',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              'Program Studi: Rekayasa Perangkat Lunak',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
