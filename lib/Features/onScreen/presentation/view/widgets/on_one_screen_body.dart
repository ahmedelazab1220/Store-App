import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class OnOneScreenBody extends StatelessWidget {
  const OnOneScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.58,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.kRectangleOnOneScreen),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: const EdgeInsets.only(
                left: 24,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text(
                      AppText.kSkip,
                      style: Styles.textStyle14,
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 28,
                      left: 15,
                      bottom: 30,
                    ),
                    child: Image.asset(
                      AppImages.kOnOneScreen,
                      width: 400,
                      height: 210,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                AppText.kAuthorizedDistributor,
                style: Styles.textStyle20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppText.kAuthorizedDistributorHint,
                style: Styles.textStyle12,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              SvgPicture.asset(AppImages.kOnePoint),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: const Size(
                    170,
                    50,
                  ),
                ),
                child: Text(
                  AppText.kNext,
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
