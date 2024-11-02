import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Suncscreen',
      description:
          'Berbeda dengan sunscreen physical, sunscreen ini biasanya punya kandungan zinc oxide. Bahan tersebut akan memantulkan sinar UV untuk menjaga kesehatan kulit. Jadi kalau kamu lebih suka menggunakan chemical sunscreen, kamu bisa pilih sunscreen Skintific ini.',
      price: 120000,
      imageUrl:
          'https://diary.marshabeauty.com/media/article_images/5291/Skintific_sunscreen_physical_atau_chemical_1.jpg',
    ),
    Product(
      id: '2',
      title: 'Moisturizer',
      description:
          'Vitamin B5 atau panthenol punya peran penting untuk menyehatkan skin barrier sekaligus melembapkannya. Kandungan panthenol yang cukup di dalam produk skincare akan mengurangi resiko skin barrier rusak karena paparan zat kimia hingga polusi.',
      price: 110000,
      imageUrl:
          'https://diary.marshabeauty.com/media/article_images/None/Skintific_5X_Ceramide_Skin_Barrier_Repair_Moisture_Gel_2.jpg',
    ),
    Product(
      id: '3',
      title: 'Serum',
      description:
          'Serum Skintific 5X Ceramide Barrier Repair memiliki kandungan utama 5 jenis ceramide, yaitu ceramide NP, ceramide AP, ceramide NS, ceramide AS, dan ceramide EOP. Ceramide adalah komponen penting dari skin barrier, atau lapisan pelindung kulit. Skin barrier yang sehat dapat melindungi kulit dari berbagai faktor lingkungan yang dapat merusak kulit, seperti polusi, debu, dan sinar UV.',
      price: 145000,
      imageUrl:
          'https://diary.marshabeauty.com/media/review_images/Skintific_4D_Hyaluronic_Acid_Hydrating_Serum.jpg',
    ),
    Product(
      id: '4',
      title: 'Toner',
      description:
          'Seperti yang disebutkan, 4D Hyaluronic Acid Barrier Essence Toner dari Skintific menggunakan bahan-bahan terbaik untuk memformulasikan TTE. Kandungannya terdiri atas empat jenis hyaluronic acid yang digabungkan menjadi HymagicTMD-4D untuk memaksimalkan penyerapan hingga ke pori-pori terdalam. Selain itu, keempat jenis hyaluronic acid ini akan mengunci kelembapan secara intensif dan cepat dalam hitungan sepuluh detik saja.',
      price: 139000,
      imageUrl:
          'https://diary.marshabeauty.com/media/review_images/Skintific_4D_Hyaluronic_Acid_Barrier_Essence_Toner.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Belanjain Store'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 102, 223, 183)),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ProductDetailScreen(product: products[i]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: products[i]
                    .backgroundColor, // Warna latar belakang untuk kontainer produk
                borderRadius: BorderRadius.circular(10),
              ),
              child: GridTile(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(products[i].imageUrl, fit: BoxFit.cover),
                ),
                footer: Container(
                  color: products[i].backgroundColor ??
                      const Color.fromARGB(255, 166, 231,
                          209), // Terapkan backgroundColor pada footer
                  child: GridTileBar(
                    backgroundColor: Colors.transparent, // Set agar transparan
                    title: Text(
                      products[i].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black), // Warna teks agar kontras
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
