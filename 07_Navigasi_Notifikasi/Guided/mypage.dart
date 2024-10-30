import 'package:flutter/material.dart';
import 'package:interaksinavigasi/models/product.dart';
import 'package:interaksinavigasi/pages/detailpage.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Mouse',
        harga: 3000000.00,
        gambarUrl:
            'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
        deskripsi: 'mos geyming'),
    Product(
        id: 2,
        nama: 'Mechanical Keyboard',
        harga: 5000000.00,
        gambarUrl:
            'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot',
        deskripsi: 'Kibord'),
    Product(
        id: 3,
        nama: 'Headphone Gaming',
        harga: 450000.00,
        gambarUrl:
            'https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg',
        deskripsi: 'phonk'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Class Model'),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: Image.network(
                  product.gambarUrl,
                  width: 70,
                  height: 70,
                ),
                title: Text(product.nama),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rp${product.harga}'),
                    Text('Deskripsi: ${product.deskripsi}'),
                  ],
                ),
                onTap: () {
                  print('Tap Layar Berhasil');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(
                        data: Icon(Icons.notifications_outlined),
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
