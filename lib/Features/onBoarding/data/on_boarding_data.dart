import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';

class OnBoardingData {
  final String title;
  final String image;
  final String description;
  final String textButton;
  final bool skip;

  OnBoardingData(
    this.title,
    this.image,
    this.description,
    this.textButton,
    this.skip,
  );
}

final List<OnBoardingData> onBoardingData = [
  OnBoardingData(
    AppText.kTitleOnBoarding1,
    AppImages.kOnBoarding1,
    AppText.kDescriptionOnBoarding,
    AppText.kNext,
    true,
  ),
  OnBoardingData(
    AppText.kTitleOnBoarding2,
    AppImages.kOnBoarding2,
    AppText.kDescriptionOnBoarding,
    AppText.kNext,
    true,
  ),
  OnBoardingData(
    AppText.kTitleOnBoarding3,
    AppImages.kOnBoarding3,
    AppText.kDescriptionOnBoarding,
    AppText.kStart,
    false,
  ),
];
