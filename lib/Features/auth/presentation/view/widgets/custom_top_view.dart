import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class CustomTopView extends StatelessWidget {
  const CustomTopView({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.textStyle19,
        ),
        SizedBox(
          height: text == AppText.kLogin
              ? MediaQuery.of(context).size.height * 0.22
              : MediaQuery.of(context).size.height * 0.1,
        ),
        SvgPicture.asset(
          AppImages.kAppLogo,
          height: 30,
          width: 40,
        ),
        Text(
          AppText.kAppName,
          textAlign: TextAlign.center,
          style: Styles.textStyle25.copyWith(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
