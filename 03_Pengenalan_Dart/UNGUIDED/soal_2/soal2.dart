import 'dart:io';

void main() {
  //Meminta inputan kepada user
  stdout.write('Masukkan panjang piramida: ');
  int? panjang = int.parse(stdin.readLineSync()!);

  // Perulangan For
   for (int i = 1; i <= panjang; i++) {
    // Mencetak spasi
    stdout.write(' ' * (panjang - i));
    
    // Mencetak bintang
    stdout.write('*' * (2 * i - 1));
    
    // Pindah ke baris berikutnya
    print('');
  }
}