class DiscountedProductModel {
  final int id;
  final String description;
  final String discount;
  final String image;
  final num price;
  final String companyName;

  DiscountedProductModel({
    required this.id,
    required this.description,
    required this.discount,
    required this.image,
    required this.price,
    required this.companyName,
  });

  factory DiscountedProductModel.fromJson(Map<String, dynamic> json) {
    return DiscountedProductModel(
      id: json['id'],
      description: json['description'],
      discount: json['discount'],
      image: json['imageUrl'],
      price: json['price'],
      companyName: json['companyName'],
    );
  }
}
