import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/home/data/models/category_model.dart';

class CategoryViewContainer extends StatelessWidget {
  const CategoryViewContainer({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 7.0,
          vertical: 13.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.porcelainColor,
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 1.9,
              child: CachedNetworkImage(
                fit: BoxFit.contain,
                imageUrl: categoryModel.image,
                placeholder: (context, url) => Container(
                  color: AppColors.grey,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              categoryModel.name,
              textAlign: TextAlign.center,
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.kCategoryName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
