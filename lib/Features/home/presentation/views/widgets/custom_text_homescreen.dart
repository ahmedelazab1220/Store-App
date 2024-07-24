import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/styles.dart';

class CustomTextHomeScreen extends StatelessWidget {
  const CustomTextHomeScreen({super.key, required this.text});
   final String text;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 8),
        child: Text(text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style:   Styles.textStyle33,
        ),
      ),
    );
  }
}
