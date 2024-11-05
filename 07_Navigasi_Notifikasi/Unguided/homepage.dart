import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detailpage.dart';
import 'cartpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [
    Product(
      id: 1,
      name: "Pisang Goreng",
      price: 10000,
      description: "Pisang goreng crispy dengan topping keju dan coklat",
      imageUrl:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fimela.com%2Ffood%2Fread%2F3777175%2Fresep-pisang-goreng-cokelat-keju-super-praktis-enaknya-sadis&psig=AOvVaw1bKCmAdt9-iZMOFHoQo3RE&ust=1730936818246000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNjwtqOwxokDFQAAAAAdAAAAABAK",
    ),
    Product(
      id: 2,
      name: "Keripik Pisang",
      price: 15000,
      description: "Keripik pisang renyah berbagai varian rasa",
      imageUrl:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Famaan.co.id%2Fkeripik-pisang-camilan-sederhana-yang-menggugah-selera%2F&psig=AOvVaw1Gm6ARuAsK4wJKEXBLRGq4&ust=1730936783204000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKjql5SwxokDFQAAAAAdAAAAABAE",
    ),
    Product(
      id: 3,
      name: "Banana Cake",
      price: 25000,
      description: "Kue pisang lembut dengan cream cheese",
      imageUrl:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tamingtwins.com%2Feasy-banana-cake%2F&psig=AOvVaw2vPp_bu2-_ZWJR8hL4IMqB&ust=1730936853397000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCJjnm7SwxokDFQAAAAAdAAAAABAE",
    ),
  ];

  List<Product> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Banana Store"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: cartItems),
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    product: products[index],
                    onAddToCart: (product) {
                      setState(() {
                        int existingIndex = cartItems
                            .indexWhere((item) => item.id == product.id);
                        if (existingIndex >= 0) {
                          cartItems[existingIndex].quantity++;
                        } else {
                          product.quantity = 1;
                          cartItems.add(product);
                        }
                      });
                    },
                  ),
                ),
              );
            },
            child: Card(
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: const Icon(Icons.image, size: 100),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp ${products[index].price}",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
