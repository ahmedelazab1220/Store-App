import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/images.dart';

class BannerModel {
  final int id;
  final String image;
  final String name;
  final String description;
  final String? discount;

  const BannerModel({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    this.discount,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      image: "${AppApis.getImages}${json['imageUrl']}",
      name: json['name'],
      description: json['description'],
      discount: json['discount'],
    );
  }
}

List<BannerModel> bannerList = [
  const BannerModel(
    id: 1,
    image: AppImages.kBestSellerProducts,
    name: 'مخبوزات فريش',
    description: 'خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت ',
    discount: 'هدية +1',
  ),
  const BannerModel(
    id: 2,
    image: AppImages.kBestSellerProducts,
    name: 'مخبوزات الموشي',
    description: 'خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت ',
    discount: '20% خصم',
  ),
];
