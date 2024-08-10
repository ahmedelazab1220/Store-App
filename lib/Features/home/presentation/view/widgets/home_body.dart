import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/crauser_slider_banner.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child: CrauserSliderBanner(),
        ),
      ],
    );
  }
}
