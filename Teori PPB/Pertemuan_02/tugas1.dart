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

  // Membuat variabel untuk menyimpan jumlah IPK
  double jumlahIpk = 0;

  // Looping untuk menghitung jumlah keseluruhan IPK
  for (var mahasiswa in daftarMahasiswa ){
    jumlahIpk += mahasiswa['ipk'];
  }

  // Menghitung rata-rata IPK
  double rerataIpk = jumlahIpk / daftarMahasiswa.length;

  print("Rata Rata IPK: $rerataIpk");
}



