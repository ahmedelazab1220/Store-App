import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/onBoarding/presentation/view_model/on_boarding_cubit.dart';

class CustomSmoothPageIndicator extends StatefulWidget {
  const CustomSmoothPageIndicator({super.key});

  @override
  State<CustomSmoothPageIndicator> createState() =>
      _CustomSmoothPageIndicatorState();
}

class _CustomSmoothPageIndicatorState extends State<CustomSmoothPageIndicator> {
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: BlocProvider.of<OnBoardingCubit>(context).pageController,
      count: 3,
      textDirection: TextDirection.rtl,
      effect: WormEffect(
        type: WormType.thinUnderground,
        dotColor: AppColors.grey,
        activeDotColor: AppColors.smoothIndicator,
        dotHeight: MediaQuery.of(context).size.height * 0.0121,
        dotWidth: MediaQuery.of(context).size.width * 0.019,
        offset: 40,
        spacing: 6,
      ),
    );
  }
}
