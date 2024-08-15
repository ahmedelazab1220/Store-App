import 'package:storeapp/Core/utils/app_apis.dart';

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
      image: "${AppApis.getImages}${json['imageUrl']}",
    );
  }
}
