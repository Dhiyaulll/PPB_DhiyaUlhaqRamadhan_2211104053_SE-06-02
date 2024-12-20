class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String? imageUrl; // Tambah parameter imageUrl
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl, // Parameter opsional
    this.quantity = 0,
  });
}
