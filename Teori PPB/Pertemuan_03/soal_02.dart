import 'dart:io';

void searchNumberInList() {
  List<List<int>> list2D = [
    List.generate(3, (i) => 5 * (i + 1)), // Baris 1: Kelipatan 5
    List.generate(4, (i) => 2 * (i + 1)), // Baris 2: Bilangan genap
    List.generate(5, (i) => (i + 1) * (i + 1)), // Baris 3: Bilangan kuadrat
    List.generate(6, (i) => i + 3), // Baris 4: Bilangan asli
  ];

  // Output List 2D
  print("Isi List:");
  for (var row in list2D) {
    print(row.join(' '));
  }

  // Meminta input dari pengguna
  stdout.write("\nMasukkan bilangan yang ingin dicari: ");
  String? input = stdin.readLineSync(); // Membaca input dari user

  if (input != null) {
    int searchNumber = int.parse(input); // Konversi input menjadi integer
    print("\nBilangan yang dicari: $searchNumber");

    bool found = false;
    for (int i = 0; i < list2D.length; i++) {
      for (int j = 0; j < list2D[i].length; j++) {
        if (list2D[i][j] == searchNumber) {
          print("$searchNumber berada di: baris ${i + 1} kolom ${j + 1}");
          found = true;
        }
      }
    }

    if (!found) {
      print("$searchNumber tidak ditemukan di dalam List.");
    }
  } else {
    print("Input tidak valid.");
  }
}

void main() {
  searchNumberInList(); // Memanggil fungsi
}
