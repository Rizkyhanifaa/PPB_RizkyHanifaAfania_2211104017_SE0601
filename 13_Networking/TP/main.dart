import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller untuk mengelola state counter
class CounterController extends GetxController {
  // Variabel untuk menyimpan nilai counter
  var count = 0.obs;

  // Fungsi untuk menambah nilai counter
  void increment() {
    count++;
  }

  // Fungsi untuk mereset nilai counter
  void reset() {
    count.value = 0;
  }
}

/// Halaman utama aplikasi
class HomePage extends StatelessWidget {
  // Menginisialisasi controller
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        // Obx digunakan untuk membuat widget reaktif terhadap perubahan data
        child: Obx(() {
          return Text(
            "${controller.count}", // Menampilkan nilai counter
            style: TextStyle(fontSize: 48),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.increment(); // Menambah nilai counter
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              controller.reset(); // Mereset nilai counter
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
