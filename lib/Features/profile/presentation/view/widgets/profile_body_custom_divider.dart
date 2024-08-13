import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.kPrimaryColor,
      indent: 20,
      endIndent: 20,
      thickness: 0.7,
    );
  }
}
