import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/styles.dart';

class CustomTitleFormField extends StatelessWidget {
  const CustomTitleFormField({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
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
