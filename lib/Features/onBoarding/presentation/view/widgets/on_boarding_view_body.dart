import 'package:flutter/material.dart';
import 'package:storeapp/Features/onBoarding/data/on_boarding_data.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/widgets/on_boarding_view_container_body.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/widgets/on_boarding_view_image.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingViewImage(
          image: onBoardingData[index].image,
          skip: onBoardingData[index].skip,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        OnBoardingViewContainerBody(
          title: onBoardingData[index].title,
          description: onBoardingData[index].description,
          textButton: onBoardingData[index].textButton,
        ),
      ],
    );
  }
}
