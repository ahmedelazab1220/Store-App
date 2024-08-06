import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
    final String text;
     final  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 23,right: 23,bottom: 16 ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                Color(0xff0A41CD),
                Color(0xff2F33CD),
                Color(0xff731BCD),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            )
        ),
        child: Center(
          child: Text(text,
            style: Styles.textStyle51,
          ),
        ),
      ),
    );
  }
}
