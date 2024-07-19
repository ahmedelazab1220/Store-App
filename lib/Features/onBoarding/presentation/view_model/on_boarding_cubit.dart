import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  final PageController pageController = PageController();

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }

  int currentPage = 0;
  getCurrentPageViewIndex(c) {
    currentPage = c;
    emit(ChangePageCounterState());
  }
}
