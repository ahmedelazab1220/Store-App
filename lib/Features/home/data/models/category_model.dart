class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({
    required this.name,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      name: json['name'],
      image:
          "https://0298-197-43-73-167.ngrok-free.app/api/v1/files?imageUrl=${json['imageUrl']}",
    );
  }
}
