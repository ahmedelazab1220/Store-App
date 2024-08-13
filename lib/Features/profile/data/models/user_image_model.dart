class UserImageModel {
  final String image;

  UserImageModel({
    required this.image,
  });

  factory UserImageModel.fromJson(Map<String, dynamic> json) {
    return UserImageModel(
      image: json['imageUrl'],
    );
  }
}
