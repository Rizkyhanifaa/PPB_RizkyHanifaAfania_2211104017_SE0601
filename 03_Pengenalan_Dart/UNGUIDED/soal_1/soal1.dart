import 'dart:io';

void main() {
  //Meminta inputan kepada user
  stdout.write('Masukkan nilai: ');
  int? nilai = int.parse(stdin.readLineSync()!);
  
  String hasil(int nilai) {
    if (nilai > 70 ) {
      return 'Nilai A';
    } else if (nilai > 40 && nilai <= 70) {
      return 'Nilai B';
    } else if (nilai > 0 && nilai <= 40) {
      return 'Nilai C';
    } else {
      return '';
    }
  }

  // Fungsi untuk memanggil hasil nilai
  String kategoriNilai = hasil(nilai);

  //Mencetak output 
  if (kategoriNilai.isNotEmpty) {
    print('$nilai merupakan $kategoriNilai');
  } else {
    print('Nilai tidak valid');
  }
}