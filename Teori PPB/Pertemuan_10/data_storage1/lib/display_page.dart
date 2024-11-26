import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  String? name;
  String? nim;
  String? userClass;

  Future<void> getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'Tidak ada data';
      nim = prefs.getString('nim') ?? 'Tidak ada data';
      userClass = prefs.getString('class') ?? 'Tidak ada data';
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0, // Menambahkan efek bayangan
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // Membulatkan sudut
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 16.0), // Padding dalam Card
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Ukuran Column sesuai dengan konten
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nama: $name'),
                  ],
                ),
                SizedBox(height: 5),
                Text('NIM: $nim'),
                Text('Kelas: $userClass'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
