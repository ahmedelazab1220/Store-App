import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/custom_appbar_homescreen.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/custom_text_homescreen.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/list_companies_homeScreen.dart';

import 'crauser_slider_banner_homescreen.dart';
import 'grid_view_sections_homeScreen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [

            CustomAppbarHomeScreen(),

            CrauserSliderBannerHomeScreen(),

            SizedBox(height: 10,),

             CustomTextHomeScreen(text: AppText.companies),

            SizedBox(height: 10,),

            ListCompaniesHomScreen(),

            SizedBox(height: 5,),

            CustomTextHomeScreen(text: "الأقسام",),

            GridViewSectionsHomeScreen(),

          ],
        ),
      ),
    );
  }
}
