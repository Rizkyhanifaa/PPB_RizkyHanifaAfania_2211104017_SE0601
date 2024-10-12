import 'dart:math';

// Fungsi untuk membuat matriks dan transpose
void createMatrixAndTranspose(int A, int B) {
  Random rand = Random(); // Membuat random generator

  // Inisialisasi matriks A x B
  List<List<int>> matrix =
      List.generate(A, (i) => List.generate(B, (j) => rand.nextInt(10)));
  // Output isi matriks
  print("Matriks A x B");
  print("A: $A \nB: $B \n");
  print("Isi Matriks: ");
  for (var row in matrix) {
    print(row.join(' '));
  }

  // Membuat matriks transpose
  List<List<int>> transpose =
      List.generate(B, (i) => List.generate(A, (j) => matrix[j][i]));
  // Output matriks transpose
  print("\nHasil transpose:");
  for (var row in transpose) {
    print(row.join(' '));
  }
}

void main() {
  createMatrixAndTranspose(3, 2); //Memanggil fungsi
}
