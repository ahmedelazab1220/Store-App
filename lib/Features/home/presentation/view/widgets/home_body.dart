import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/carousel_slider_banner.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/category_list_view_container.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/company_list_view_container.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        const SliverToBoxAdapter(
          child: CrauserSliderBanner(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 17.0,
              top: 20.0,
            ),
            child: Text(
              'الشركات',
              textDirection: TextDirection.rtl,
              style: Styles.textStyle15.copyWith(
                color: AppColors.kCategoryName,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CompanyListViewContainer(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 17.0,
              top: 17.0,
            ),
            child: Text(
              'الأقسام',
              textDirection: TextDirection.rtl,
              style: Styles.textStyle15.copyWith(
                color: AppColors.kCategoryName,
              ),
            ),
          ),
        ),
        const CategoryListViewContainer(),
      ],
    );
  }
}
