import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/custom_search_app_bar.dart';
import 'package:storeapp/Core/widgets/notification_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24.8,
            right: 24.8,
            top: 24.0,
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      AppImages.kCartIcon,
                      height: 26.0,
                    ),
                  ),
                  const SizedBox(
                    width: 45.0,
                  ),
                  const NotificationIcon(
                    colorDot: AppColors.kSecondaryColor,
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: SvgPicture.asset(AppImages.kDrawerIcon),
                  ),
                ],
              ),
            ],
          ),
        ),
        SvgPicture.asset(AppImages.kAppMainIcon),
        Text(
          AppText.kAppName,
          style: Styles.textStyle22.copyWith(
            color: AppColors.kPrimaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomSearchAppBar(),
      ],
    );
  }
}
