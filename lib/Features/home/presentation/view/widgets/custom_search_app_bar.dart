import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: AnimatedTextField(
          maxLines: 1,
          animationType: Animationtype.typer,
          hintTextStyle: const TextStyle(
            color: Colors.deepPurple,
          ),
          hintTexts: const [
            'يتوفر لديك طلبات جديدة',
            'يوجد خصومات متوفرة يمكن رؤيتها',
            'نحن ممتنون لزيارتك لنا',
          ],
          decoration: InputDecoration(
            hintText: AppText.kSearchForOrders,
            hintStyle: Styles.textStyle15.copyWith(
              color: AppColors.kHintSearchTextField,
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.kSearchIconORTextField,
              ),
            ),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: const BorderSide(
        color: AppColors.kSearchIconORTextField,
      ),
    );
  }
}
