import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul13/view_model/controller.dart';

class PageTambahCatatan extends StatelessWidget {
  PageTambahCatatan({super.key});

  final NoteController noteController = Get.find<NoteController>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Catatan'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 227, 138, 243),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Deskripsi',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  noteController.addNote(
                    titleController.text,
                    descriptionController.text,
                  );
                  Get.back(); // Kembali ke halaman utama
                } else {
                  Get.snackbar(
                    'Kesalahan',
                    'Judul dan Deskripsi tidak boleh kosong',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              },
              child: const Text('Simpan Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
