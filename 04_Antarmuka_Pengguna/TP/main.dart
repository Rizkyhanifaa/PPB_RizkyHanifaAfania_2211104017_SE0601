import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageJodipan(),
    );
  }
}

class pageJodipan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Rekomendasi Wisata',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 159, 252),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Kampung Warna-warni Jodipan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://atourin.obs.ap-southeast-3.myhuaweicloud.com/images/destination/malang/kampung-warna-warni-jodipan-profile1640248194.png?x-image-process=image/resize,p_100,limit_1/imageslim',
              height: 200,
              width: 300,
              fit: BoxFit.cover, // untuk menyesuaikan gambar di dalam kotak
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Kampung Warna-warni Jodipan adalah salah satu dari kampung tematik yang ada di Malang. Yang menarik dari kampung ini adalah setiap rumah dan jalannya dicat dengan warna mencolok.\n\nTempat ini memiliki banyak spot foto yang Instagramable sehingga sering dimanfaatkan oleh pengunjung untuk berswafoto ria.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Fungsi masih kosong, karena belum ada aksi ketika button di klik
              },
              child: Text(
                'Kunjungi Sekarang',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 46, 159, 252), // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
