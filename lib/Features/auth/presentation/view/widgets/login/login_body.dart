import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/fade_animation.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_top_view.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/login/login_view_container.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 0.3,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomTopView(
                text: AppText.kLogin,
              ),
            ),
            SliverToBoxAdapter(child: LoginViewContainer()),
          ],
        ),
      ),
    );
  }
}
