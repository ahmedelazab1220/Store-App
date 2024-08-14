import 'package:flutter/widgets.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class DiscountedProductEmptyList extends StatelessWidget {
  const DiscountedProductEmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.kNoNotification,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppText.kNoDiscounts,
            style: Styles.textStyle17.copyWith(
              color: AppColors.kTransparent,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppText.kNoDiscountsDescription,
            style: Styles.textStyle11.copyWith(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
