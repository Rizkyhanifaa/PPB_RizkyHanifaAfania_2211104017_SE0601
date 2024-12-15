import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul13/view_model/controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Catatan Sederhana'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 227, 138, 243),
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () => noteController.notes.isEmpty
            ? const Center(
                child: Text('Yahh masih belum ada catatan :('),
              )
            : ListView.builder(
                itemCount: noteController.notes.length,
                itemBuilder: (context, index) {
                  final note = noteController.notes[index];
                  return Card(
                    child: ListTile(
                      title: Text(note['title']!),
                      subtitle: Text(note['description']!),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          noteController.deleteNote(index);
                        },
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add');
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 227, 138, 243),
        foregroundColor: Colors.white,
      ),
    );
  }
}
