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
    this.initialValue,
    this.onChanged,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
  });

  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? secure;
  final IconData? suffixIcon;
  final Function()? suffixOnPressed;
  final String? initialValue;
  final Function(String)? onChanged;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      initialValue: initialValue,
      obscureText: secure ?? false,
      keyboardType: keyboardType,
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
        border: outlineInputBorder(AppColors.kTextField),
        enabledBorder: outlineInputBorder(AppColors.kTextField),
        focusedBorder: outlineInputBorder(AppColors.kPrimaryColor),
        hintText: hintText,
        labelText: labelText,
        labelStyle: labelStyle,
        hintStyle: hintStyle ??
            Styles.textStyle11.copyWith(
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

  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
