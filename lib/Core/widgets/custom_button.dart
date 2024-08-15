import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    this.onPressed,
    this.width,
    this.height,
    this.redius,
  });

  final void Function()? onPressed;
  final String textButton;
  final double? width;
  final double? height;
  final double? redius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(redius ?? 8.0),
        ),
        minimumSize: Size(
          width ?? 164,
          height ?? 50,
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
  }
}
