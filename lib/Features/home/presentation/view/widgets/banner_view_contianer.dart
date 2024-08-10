import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/home/data/models/banner_model.dart';

class BannerViewContianer extends StatelessWidget {
  const BannerViewContianer({super.key, required this.bannerModel});

  final BannerModel bannerModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 40,
          ),
          margin: const EdgeInsets.only(
            top: 24,
            right: 8,
            bottom: 10,
            left: 8,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.aliceBlueColor,
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.asset(
                  bannerModel.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        bannerModel.name,
                        textAlign: TextAlign.right,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle22.copyWith(
                          color: AppColors.kNameProductBanner,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      flex: 2,
                      child: Text(
                        bannerModel.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: Styles.textStyle16.copyWith(
                          color: AppColors.kDescriptionProductBanner,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 19,
          bottom: 11,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  AppColors.bluePurpleColor,
                  AppColors.purpleHeartColor,
                ],
              ),
            ),
            child: bannerModel.discount != null
                ? Text(
                    bannerModel.discount.toString(),
                    style: Styles.textStyle14,
                  )
                : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
