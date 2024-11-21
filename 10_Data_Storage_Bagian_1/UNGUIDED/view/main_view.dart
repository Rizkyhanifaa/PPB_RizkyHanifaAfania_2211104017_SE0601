import 'package:flutter/material.dart';
import 'package:belajar_sqlite/helper/db_helper.dart';
import 'package:belajar_sqlite/view/my_db_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _dbData = [];

  @override
  void initState() {
    _refreshData();
    super.initState();
  }

  void _refreshData() async {
    final data = await dbHelper.queryAllRows();
    setState(() {
      _dbData = data;
    });
  }

//untuk menghapus data
  void _deleteData(int id) async {
    await dbHelper.delete(id);
    _refreshData();
  }

  //untuk mengedit data
  void _editData(Map<String, dynamic> item) {
    // Panggil MyDatabaseView dengan mode edit
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            MyDatabaseView(item: item), // Kirim data untuk diedit
      ),
    ).then((_) {
      _refreshData(); // Refresh data setelah edit
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: _dbData.isEmpty
          ? Center(
              child: Text(
                'Belum ada data mahasiswa',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _dbData.length,
              itemBuilder: (context, index) {
                final item = _dbData[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(
                      item['nama'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NIM: ${item['nim']}'),
                        Text('Alamat: ${item['alamat']}'),
                        Text('Hobi: ${item['hobi']}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Ikon pensil untuk edit
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () =>
                              _editData(item), // Panggil fungsi edit
                        ),
                        // Ikon tong sampah untuk delete
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteData(item['id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyDatabaseView(),
            ),
          );
          _refreshData();
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
