import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view_model/login_cubit/login_cubit.dart';

class LoginViewContainerBody extends StatefulWidget {
  const LoginViewContainerBody({super.key});

  @override
  State<LoginViewContainerBody> createState() => _LoginViewContainerBodyState();
}

class _LoginViewContainerBodyState extends State<LoginViewContainerBody> {
  bool secure = true;
  IconData suffixIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return Form(
      key: cubit.formKey,
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
            controller: cubit.emailController,
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
            controller: cubit.passwordController,
            validator: (value) {
              return Validator.validatePassword(value);
            },
            secure: secure,
            suffixIcon: suffixIcon,
            suffixOnPressed: () {
              setState(() {
                secure = !secure;
                suffixIcon = secure ? Icons.visibility : Icons.visibility_off;
              });
            },
          ),
          const SizedBox(
            height: 48,
          ),
          CustomButton(
            textButton: AppText.kLogin,
            width: 174,
            onPressed: () {
              if (cubit.formKey.currentState!.validate()) {
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
