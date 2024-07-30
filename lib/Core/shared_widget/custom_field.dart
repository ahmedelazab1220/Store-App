import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hintText});
   final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          color: AppColors.white,
        ),
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.white, width: 0.8,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.white, width: 0.8,
              ),
            ),
            hintText: hintText,
            hintStyle: Styles.textStyle40,
            hintTextDirection: TextDirection.rtl

        ),
      ),
    );
  }
}
