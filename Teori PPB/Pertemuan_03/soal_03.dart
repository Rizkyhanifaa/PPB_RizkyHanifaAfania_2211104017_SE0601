import 'dart:io';

// Fungsi untuk mencari FPB 
int hitungFPB(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

// Fungsi untuk mencari KPK
int hitungKPK(int a, int b) {
  return (a * b) ~/ hitungFPB(a, b);
}

void main() {
  print("--- Menghitung KPK ----\n");
  // Meminta input dari user
  stdout.write("Masukkan Bilangan 1: ");
  int? bilangan1 = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Bilangan 2: ");
  int? bilangan2 = int.parse(stdin.readLineSync()!);

  // Menghitung KPK
  int kpk = hitungKPK(bilangan1, bilangan2);
  print("\nKPK $bilangan1 dan $bilangan2 = $kpk");
}
