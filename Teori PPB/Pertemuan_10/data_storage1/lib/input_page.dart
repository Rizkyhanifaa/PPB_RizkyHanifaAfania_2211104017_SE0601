import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _classController = TextEditingController();

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    await prefs.setString('nim', _nimController.text);
    await prefs.setString('class', _classController.text);
  }

  //Mendefinisikan fungsi buildText
  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Input Data Mahasiswa'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildTextField(
              controller: _nameController,
              label: 'Nama',
              icon: Icons.person,
            ),
            const SizedBox(height: 16),
            buildTextField(
              controller: _nimController,
              label: 'NIM',
              icon: Icons.confirmation_num,
            ),
            const SizedBox(height: 16),
            buildTextField(
              controller: _classController,
              label: 'Kelas',
              icon: Icons.class_outlined,
            ),
            const SizedBox(height: 16),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    saveData();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Data tersimpan!')),
                    );
                  },
                  child: Text(
                    'Simpan',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 109, 240, 21)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/display');
                  },
                  child: Text(
                    'Lihat Data',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 86, 202, 248)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
