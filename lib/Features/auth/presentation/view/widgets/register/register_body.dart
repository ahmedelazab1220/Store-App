import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_top_view.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/fade_animation.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_container.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
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
                    text: AppText.kTitleRegisterScreen,
                  ),
                ),
                SliverFillRemaining(
                  child: RegisterViewContainer(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
