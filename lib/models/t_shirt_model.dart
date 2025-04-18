class t_shirt{

  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;


  t_shirt({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  //default constructor
  t_shirt.defaultConstructor()
      : id = '',
        name = '',
        price = 0.0,
        imageUrl = '',
        description = '';

  //Chuyển đổi T-shirt thành JSON
  Map<String, dynamic> toJson() => {
      'id': id,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
  };

  //Tạo T-shirt từ JSON
  factory t_shirt.fromJson(Map<String, dynamic> json) => t_shirt(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      description: json['description'],
    );

}

class TshirtInCart extends t_shirt {
  int quantity;
  bool isSelected;

  TshirtInCart({
    this.quantity = 1,
    this.isSelected = false,
    required String id,
    required String name,
    required double price,
    required String imageUrl,
    required String description,
  }) : super(
    id: id,
    name: name,
    price: price,
    imageUrl: imageUrl,
    description: description,
  );

  TshirtInCart.defaultConstructor()
      : quantity = 1,
        isSelected = false,
        super.defaultConstructor();

  @override
  Map<String, dynamic> toJson() => {
    ...super.toJson(),
    'quantity': quantity,
    'isSelected': isSelected,
  };

  factory TshirtInCart.fromJson(Map<String, dynamic> json) => TshirtInCart(
    id: json['id'],
    name: json['name'],
    price: json['price'],
    imageUrl: json['imageUrl'],
    description: json['description'],
    quantity: json['quantity'],
    isSelected: json['isSelected'] ?? false,
  );
}
