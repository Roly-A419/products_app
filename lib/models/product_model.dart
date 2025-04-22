class Product {
  final int id;
  final String name;
  final String description;
  final String brand;
  final double price;
  final int stock;
  final bool available;
  final bool freeShipping;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.brand,
    required this.price,
    required this.stock,
    required this.available,
    required this.freeShipping,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        brand: json['brand'],
        price: (json['price'] as num).toDouble(),
        stock: json['stock'],
        available: json['available'],
        freeShipping: json['freeShipping'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'brand': brand,
        'price': price,
        'stock': stock,
        'available': available,
        'freeShipping': freeShipping,
      };
}
