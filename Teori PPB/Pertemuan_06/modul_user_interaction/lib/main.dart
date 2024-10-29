import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Daftar item dan detailnya
  final List<Map<String, String>> items = [
    {
      "title": "Native App",
      "detail":
          "Android, iOS, menggunakan bahasa platform masing-masing seperti Java/Kotlin untuk Android dan Swift/Objective-C untuk iOS.",
      "color": "orange"
    },
    {
      "title": "Hybrid App",
      "detail": "Android, iOS, Web, menggunakan JavaScript, Dart.",
      "color": "grey"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi ListView"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // Membuat kotak pembungkus
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 192, 190, 190)),
                borderRadius: BorderRadius.circular(8),
              ),
              // Isi konten di dalam kotak pembungkus
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: items[index]["color"] == "orange"
                        ? const Color.fromARGB(255, 231, 101, 13)
                        : Colors.grey,
                  ),
                ),

                // Menampilkan tulisan "Native & Hybrid App"
                title: Text(
                  items[index]["title"]!,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Detail"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            items[index]["title"]!,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(items[index]["detail"]!),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Close",
                              style: TextStyle(color: Colors.green)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
