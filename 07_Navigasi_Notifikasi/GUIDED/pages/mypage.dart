import 'package:flutter/material.dart';
import 'package:navigasi_notifikasi/models/product.dart';
import 'package:navigasi_notifikasi/pages/detail.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      nama: 'Mouse',
      harga: 300000.00,
      imageurl:
          'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
      deskripsi: 'Mouse gaming berkualitas tinggi',
    ),
    Product(
      id: 2,
      nama: 'Keyboard',
      harga: 350000.00,
      imageurl:
          'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot',
      deskripsi: 'Keyboard mekanik untuk gaming',
    ),
    Product(
      id: 3,
      nama: 'Headphone Gaming',
      harga: 700000.00,
      imageurl:
          'https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg',
      deskripsi: 'Headphone dengan kualitas suara tinggi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Model'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageurl, width: 50, height: 50),
            title: Text(product.nama),
            subtitle: Text(product.deskripsi),
            trailing: Text('Rp ${product.harga.toStringAsFixed(2)}'),
            //
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DetailProduct(data: 'Data dari MyPage')));
            },
          );
        },
      ),
    );
  }
}
