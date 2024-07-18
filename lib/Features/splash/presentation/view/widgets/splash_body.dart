import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(-0.48, 0.81),
            colors: [
              AppColors.deepPurpleA700,
              AppColors.purple600,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.kPrimaryLogo),
            const SizedBox(
              height: 3,
            ),
            Text(
              AppText.kAppName,
              style: Styles.textStyle25,
            )
          ],
        ),
      ),
    );
  }
}
