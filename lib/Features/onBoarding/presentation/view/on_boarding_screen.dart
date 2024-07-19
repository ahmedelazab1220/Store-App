import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/widgets/on_boarding_body.dart';
import 'package:storeapp/Features/onBoarding/presentation/view_model/on_boarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: const Scaffold(
        body: OnBoardingBody(),
      ),
    );
  }
}
