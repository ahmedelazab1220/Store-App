import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Core/widgets/custom_text_form_field.dart';
import 'package:storeapp/Core/widgets/custom_title_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class RegisterViewPersonalContainerBody extends StatelessWidget {
  const RegisterViewPersonalContainerBody({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    return Column(
      children: [
        const CustomTitleTextFormField(
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
        const CustomTitleTextFormField(
          icon: FontAwesomeIcons.lock,
          title: AppText.kPassword,
        ),
        const SizedBox(
          height: 7,
        ),
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            return CustomTextFormField(
              hintText: AppText.kHintTextPasswordField,
              controller: passwordController,
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
          height: 38,
        ),
        const CustomTitleTextFormField(
          image: AppImages.kPersonIcon,
          title: AppText.kName,
        ),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextNameField,
          keyboardType: TextInputType.name,
          controller: nameController,
          validator: (value) {
            return Validator.validateName(value);
          },
        ),
        const SizedBox(
          height: 38,
        ),
        const CustomTitleTextFormField(
          image: AppImages.kPhoneIcon,
          title: AppText.kPhoneNumber,
        ),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextPhoneField,
          keyboardType: TextInputType.number,
          controller: phoneController,
          validator: (value) {
            return Validator.validatePhone(value);
          },
        ),
      ],
    );
  }
}
