void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
    "nama": "John Doe",
    "ipk": 3.88,
    "isMarried": false,
    },
    {
    "nama": "Andi Doe",
    "ipk": 3.78,
    "isMarried": true,
    },
    {
    "nama": "Budi Doe",
    "ipk": 3.68,
    "isMarried": true,
    }
  ];

   // Membuat variabel untuk menghitung juml mhs yang sudah menikah
   int jumlahMarried = 0;

   // Looping untuk menghitung juml yang sudah menikah
   for (var mahasiswa in daftarMahasiswa){
    if (mahasiswa['isMarried']){
      jumlahMarried++;
    }
   }
   print("Jumlah mahasiswa yang sudah menikah: $jumlahMarried orang");
}



