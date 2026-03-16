class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  final String category;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'description': description,
      'category': category,
    };
  }
}
