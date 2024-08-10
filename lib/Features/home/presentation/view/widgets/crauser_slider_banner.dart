import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/home/data/models/banner_model.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/banner_view_contianer.dart';

class CrauserSliderBanner extends StatefulWidget {
  const CrauserSliderBanner({super.key});

  @override
  State<CrauserSliderBanner> createState() => _CrauserSliderBannerState();
}

class _CrauserSliderBannerState extends State<CrauserSliderBanner> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return BannerViewContianer(bannerModel: bannerList[itemIndex]);
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 0,
            onPageChanged: (value, v) {
              setState(
                () {
                  currentPage = value;
                },
              );
            },
            // enlargeFactor: 0.1,
          ),
        ),
        Positioned(
          bottom: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < bannerList.length; i++)
                Container(
                  margin: const EdgeInsets.all(3),
                  height: 15,
                  width: i == currentPage ? 12 : 8,
                  decoration: BoxDecoration(
                    color: i == currentPage
                        ? AppColors.violetBlueColor
                        : AppColors.periwinkleColor,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
