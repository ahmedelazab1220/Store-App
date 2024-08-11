import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view_model/login_cubit/login_cubit.dart';

class LoginViewContainerBody extends StatelessWidget {
  const LoginViewContainerBody({super.key});

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
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return CustomTextFormField(
                hintText: AppText.kHintTextPasswordField,
                controller: cubit.passwordController,
                validator: (value) {
                  return Validator.validatePassword(value);
                },
                secure: cubit.secure,
                suffixIcon: cubit.suffixIcon,
                suffixOnPressed: () {
                  cubit.changeSecure();
                },
              );
            },
          ),
          const SizedBox(
            height: 48,
          ),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                GoRouter.of(context).pushReplacement(AppRouter.kRegisterScreen);
                showToast(
                  title: AppText.kWelcomeMessage,
                  color: AppColors.kPrimaryColor,
                );
              } else if (state is LoginFailureState) {
                showToast(
                  title: state.message,
                  color: AppColors.red,
                );
              }
            },
            builder: (context, state) {
              return CustomButton(
                textButton: AppText.kLogin,
                width: 174,
                onPressed: () {
                  if (cubit.formKey.currentState!.validate()) {
                    cubit.login();
                  }
                },
              );
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
