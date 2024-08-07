import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const CustomTitleFormField(
            icon: FontAwesomeIcons.envelope,
            title: AppText.kEmail,
          ),
          const SizedBox(
            height: 7,
          ),
          CustomTextFormField(
            hintText: AppText.kHintTextEmailField,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: (value) {
              return Validator.validateEmail(value);
            },
          ),
          const SizedBox(
            height: 38,
          ),
          const CustomTitleFormField(
            icon: FontAwesomeIcons.lock,
            title: AppText.kPassword,
          ),
          const SizedBox(
            height: 7,
          ),
          CustomTextFormField(
            hintText: AppText.kHintTextPasswordField,
            controller: passwordController,
            validator: (value) {
              return Validator.validatePassword(value);
            },
          ),
          const SizedBox(
            height: 48,
          ),
          CustomButton(
            textButton: AppText.kLogin,
            width: 174,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(AppRouter.kSplashScreen);
              }
            },
          ),
          const SizedBox(
            height: 51,
          ),
          MemberOrNot(
            text: AppText.kHaveNoAccount,
            textButton: AppText.kDoRegister,
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kRegisterScreen);
            },
          ),
        ],
      ),
    );
  }
}
