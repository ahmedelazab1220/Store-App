import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/banner_view_contianer.dart';
import 'package:storeapp/Features/home/presentation/view_model/home_cubit/home_cubit.dart';

class CrauserSliderBanner extends StatefulWidget {
  const CrauserSliderBanner({super.key});

  @override
  State<CrauserSliderBanner> createState() => _CrauserSliderBannerState();
}

class _CrauserSliderBannerState extends State<CrauserSliderBanner> {
  int currentPage = 0;
  List<Widget> carouselItems = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is BannersSuccessState) {
          carouselItems = state.banners.map((banner) {
            return BannerViewContianer(bannerModel: banner);
          }).toList();
        } else if (state is BannersFailureState) {
          showToast(title: state.message, color: AppColors.red);
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 0,
                onPageChanged: (value, v) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
            Positioned(
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < carouselItems.length; i++)
                    Container(
                      margin: const EdgeInsets.all(3),
                      height: 15,
                      width: i == currentPage ? 10 : 8,
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
      },
    );
  }
}
