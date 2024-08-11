class CompanyModel {
  final String name;
  final String image;

  const CompanyModel({
    required this.name,
    required this.image,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'],
      image:
          "https://0298-197-43-73-167.ngrok-free.app/api/v1/files?imageUrl=${json['imageUrl']}",
    );
  }
}
