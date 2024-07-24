import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/home/data/Banner_list.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/banner_homeScreen.dart';

class CrauserSliderBannerHomeScreen extends StatefulWidget{
  const CrauserSliderBannerHomeScreen({super.key});

  @override
  State<CrauserSliderBannerHomeScreen> createState() => _BannerHomeScreenState();
}

class _BannerHomeScreenState extends State<CrauserSliderBannerHomeScreen> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (
                BuildContext context, int itemIndex, int pageViewIndex) {
               return BannerHomeScreen(bannerModel: BannerList[itemIndex]);
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              onPageChanged: (value,v){
                setState(() {
                  currentPage=value;
                });
              },
              // enlargeFactor: 0.1,

            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < BannerList.length; i++)
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 15,
                    width:i==currentPage?12 :8,
                    decoration: BoxDecoration(
                        color: i==currentPage? AppColors.violetBlueColor:  AppColors.periwinkleColor,
                        shape: BoxShape.circle
                    ),
                  ),


              ],
            ),
          ),
        ]
    );
  }
}