import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';

class CustomTitleTextFormField extends StatelessWidget {
  const CustomTitleTextFormField({
    super.key,
    this.image,
    this.icon,
    this.mainAxisAlignment,
    required this.title,
  });

  final String? image;
  final IconData? icon;
  final String title;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        image != null
            ? SvgPicture.asset(image!)
            : Icon(
                icon,
                size: 13.0,
                color: AppColors.kTitleTextField,
              ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}
