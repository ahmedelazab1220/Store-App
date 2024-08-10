import 'package:storeapp/Core/utils/images.dart';

class BannerModel {
  final String image;
  final String name;
  final String description;
  final String? discount;

  const BannerModel({
    required this.image,
    required this.name,
    required this.description,
    this.discount,
  });
}

List<BannerModel> bannerList = [
  const BannerModel(
    image: AppImages.kBestSellerProducts,
    name: 'مخبوزات فريش',
    description: 'خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت ',
    discount: 'هدية +1',
  ),
  const BannerModel(
    image: AppImages.kBestSellerProducts,
    name: 'مخبوزات الموشي',
    description: 'خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت ',
    discount: '20% خصم',
  ),
];
