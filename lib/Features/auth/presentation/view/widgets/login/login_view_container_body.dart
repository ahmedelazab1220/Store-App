import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';

class LoginViewContainerBody extends StatefulWidget {
  const LoginViewContainerBody({super.key});

  @override
  State<LoginViewContainerBody> createState() => _LoginViewContainerBodyState();
}

class _LoginViewContainerBodyState extends State<LoginViewContainerBody> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 55,
        ),
        const CustomButton(
          textButton: AppText.kLogin,
          width: 174,
        ),
        const SizedBox(
          height: 60,
        ),
        MemberOrNot(
          text: AppText.kHaveNoAccount,
          textButton: AppText.kDoRegister,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kRegisterScreen);
          },
        ),
      ],
    );
  }
}
