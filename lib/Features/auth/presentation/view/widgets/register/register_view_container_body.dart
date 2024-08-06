import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/custom_add_image.dart';

class RegisterViewContainerBody extends StatefulWidget {
  const RegisterViewContainerBody({super.key});

  @override
  State<RegisterViewContainerBody> createState() =>
      _RegisterViewContainerBodyState();
}

class _RegisterViewContainerBodyState extends State<RegisterViewContainerBody> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleFormField(
          image: AppImages.kPersonIcon,
          title: AppText.kName,
        ),
        const SizedBox(
          height: 6,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextNameField,
          keyboardType: TextInputType.name,
          controller: nameController,
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTitleFormField(
          image: AppImages.kPhoneIcon,
          title: AppText.kPhoneNumber,
        ),
        const SizedBox(
          height: 6,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextPhoneField,
          keyboardType: TextInputType.number,
          controller: phoneController,
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTitleFormField(
          image: AppImages.kAddressIcon,
          title: AppText.kAddress,
        ),
        const SizedBox(
          height: 6,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextAddressField,
          keyboardType: TextInputType.streetAddress,
          controller: addressController,
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTitleFormField(
          image: AppImages.kAddressIcon,
          title: AppText.kCopyIDCard,
        ),
        const SizedBox(
          height: 6,
        ),
        const CustomAddImage(),
        const SizedBox(
          height: 55,
        ),
        const CustomButton(
          textButton: AppText.kRegister,
          width: 174,
        ),
        const SizedBox(
          height: 20,
        ),
        MemberOrNot(
          text: AppText.kHaveAccount,
          textButton: AppText.kDoLogin,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kLoginScreen);
          },
        ),
      ],
    );
  }
}
