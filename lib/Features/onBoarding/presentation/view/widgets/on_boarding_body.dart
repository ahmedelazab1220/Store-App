import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/widgets/on_boarding_view_body.dart';
import 'package:storeapp/Features/onBoarding/presentation/view_model/on_boarding_cubit.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingCubit = BlocProvider.of<OnBoardingCubit>(context);
    return PageView.builder(
      itemBuilder: (context, index) {
        return OnBoardingViewBody(index: index);
      },
      controller: onBoardingCubit.pageController,
      onPageChanged: (c) {
        onBoardingCubit.getCurrentPageViewIndex(c);
      },
      itemCount: 3,
    );
  }
}
