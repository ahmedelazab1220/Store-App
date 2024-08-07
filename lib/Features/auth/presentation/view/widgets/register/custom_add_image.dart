import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';

class CustomAddImage extends StatelessWidget {
  const CustomAddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomTitleFormField(
          image: AppImages.kCopyIdCard,
          title: AppText.kCopyIDCard,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 7,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 156,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.kTextField,
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppImages.kAddPhotoIcon,
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
