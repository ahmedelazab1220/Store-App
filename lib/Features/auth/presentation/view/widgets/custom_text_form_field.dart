import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.secure,
    this.suffixIcon,
    this.suffixOnPressed,
  });

  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? secure;
  final IconData? suffixIcon;
  final Function()? suffixOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: secure ?? false,
      keyboardType: keyboardType,
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        hintText: hintText,
        hintStyle: Styles.textStyle11.copyWith(
          color: AppColors.kHintTextField,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixOnPressed,
                icon: Icon(suffixIcon),
              )
            : null,
      ),
      textAlign: TextAlign.center,
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: AppColors.kTextField,
      ),
    );
  }
}
