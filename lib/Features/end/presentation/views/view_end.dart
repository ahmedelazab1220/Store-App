import 'package:flutter/material.dart';
import 'package:storeapp/Features/end/presentation/views/widget/end_screen_body.dart';
import '../../../../Core/utils/colors.dart';
class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: EndScreenBody(),
    );
  }
}
