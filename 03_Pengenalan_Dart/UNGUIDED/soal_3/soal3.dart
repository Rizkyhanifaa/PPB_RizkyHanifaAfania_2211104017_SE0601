import 'dart:io';

void main() {
  //Meminta inputan kepada user
  stdout.write('Masukkan Bilangan Bulat: ');
  int? bilangan = int.parse(stdin.readLineSync()!);

  // Fungsi untuk mengecek apakah bilangan yang diinput user 
  bool cekPrima(int bilangan) {
  if (bilangan <= 1) {
    return false; // Bilangan kurang dari atau sama dengan 1 = bukan bilangan prima
  }

  for (int i = 2; i <= bilangan ~/ 2; i++) {
    if (bilangan % i == 0) {
      return false; // Jika ada pembagi selain 1 dan dirinya sendiri = bukan prima
    }
  }
  return true; // Jika tidak ada pembagi selain 1 dan dirinya sendiri = bilangan prima
  }

  // Cek termasuk bilangan prima atau bukan
  if (cekPrima(bilangan)) {
    print('$bilangan adalah bilangan prima');
  } else {
    print('$bilangan bukan bilangan prima');
  }
}



