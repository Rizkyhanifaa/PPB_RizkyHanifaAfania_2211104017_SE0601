import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageWisataBanyumas(),
    );
  }
}

class pageWisataBanyumas extends StatelessWidget {
  // Daftar rekomendasi tempat wisata
  final List<Map<String, String>> Wisata = [
    {
      'nama': 'Bukit Bintang Baturraden',
      'deskripsi':
          'Bukit Bintang Baturraden adalah salah satu destinasi wisata hit lain yang harus dikunjungi saat berlibur ke Banyumas. Tempat ini biasanya ramai pada malam hari, yaitu waktu-waktu ketika pengunjung datang untuk melihat bintang dan lampu kota',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiaXxZTmsVp3nciQAssClpUslV_vbGhRayhw&s',
    },
    {
      'nama': 'Curug Bayan',
      'deskripsi':
          'Saat berada di Banyumas, sempatkanlah untuk singgah di Curug Bayan. Air terjun ini terletak di lokasi yang cukup terpencil tepatnya di tengah hutan, sehingga atmosfer alaminya sangat terjaga',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVLjg0R9dOaZJjaRMTn2Tr49nnYta9Cli-aQ&s',
    },
    {
      'nama': 'Telaga Sunyi',
      'deskripsi':
          'Telaga Sunyi adalah destinasi wisata di Banyumas yang lagi hit berikutnya. Telaga Sunyi menawarkan keindahan alam yang masih asli dan air jernih berwarna biru-kehijauan.',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnqOh_dfWBUC3IxEDP6LCKE3OUgQ3869no9A&s'
    },
    {
      'nama': 'Pancuran Pitu',
      'deskripsi':
          'Pancuran Pitu di Banyumas adalah objek wisata alam yang terkenal dengan tujuh pancuran air belerangnya. Selain mencuci muka atau berendam di air panas, kamu juga dapat menikmati jasa pijat untuk merilekskan diri setelah berwisata.',
      'gambar':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Pancuran_Tujuh%2C_near_Baturraden%2C_Purwokerto_2015-03-23_03.jpg/500px-Pancuran_Tujuh%2C_near_Baturraden%2C_Purwokerto_2015-03-23_03.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Rekomendasi Wisata di Banyumas',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 159, 252),
      ),
      body: ListView.builder(
        itemCount: Wisata.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    Wisata[index]['nama']!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    Wisata[index]['gambar']!,
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    Wisata[index]['deskripsi']!,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol diklik
                    },
                    child: Text(
                      'Kunjungi Sekarang',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 46, 159, 252),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
