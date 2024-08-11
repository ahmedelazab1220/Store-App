import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/home/data/models/company_model.dart';

class CompanyViewContainer extends StatelessWidget {
  const CompanyViewContainer({super.key, required this.companyModel});

  final CompanyModel companyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.aliceBlueColor,
            child: Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: ClipOval(
                child: CachedNetworkImage(
                  width: 50,
                  height: 35,
                  fit: BoxFit.cover,
                  imageUrl: companyModel.image,
                  placeholder: (context, url) => Container(
                    color: AppColors.grey,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            companyModel.name,
            style: Styles.textStyle11.copyWith(
              color: AppColors.kHintSearchTextField,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
