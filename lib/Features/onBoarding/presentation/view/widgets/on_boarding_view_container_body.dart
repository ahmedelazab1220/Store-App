import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/onBoarding/presentation/view_model/on_boarding_cubit.dart';

class OnBoardingViewContainerBody extends StatelessWidget {
  const OnBoardingViewContainerBody({
    super.key,
    required this.title,
    required this.description,
    required this.textButton,
  });
  final String title;
  final String description;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          FadeInRight(
            child: Text(
              title,
              style: Styles.textStyle20,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          FadeInLeft(
            child: Text(
              description,
              style: Styles.textStyle12,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SvgPicture.asset(AppImages.kOnBoardingOneCirclePoint),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              return TextButton(
                onPressed: () {
                  if (BlocProvider.of<OnBoardingCubit>(context).currentPage <
                      2) {
                    BlocProvider.of<OnBoardingCubit>(context)
                        .getCurrentPageViewIndex(
                            ++BlocProvider.of<OnBoardingCubit>(context)
                                .currentPage);

                    BlocProvider.of<OnBoardingCubit>(context)
                        .pageController
                        .animateToPage(
                          BlocProvider.of<OnBoardingCubit>(context).currentPage,
                          curve: Curves.decelerate,
                          duration: const Duration(seconds: 1),
                        );
                  } else {
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.kSplashScreen);
                  }
                },
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
                child: FadeInLeft(
                  duration: const Duration(seconds: 1),
                  child: Text(
                    textButton,
                    style: Styles.textStyle18,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
