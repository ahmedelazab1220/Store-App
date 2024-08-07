import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';

class RegisterViewPersonalContainerBody extends StatefulWidget {
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
  State<RegisterViewPersonalContainerBody> createState() =>
      _RegisterViewPersonalContainerBodyState();
}

class _RegisterViewPersonalContainerBodyState
    extends State<RegisterViewPersonalContainerBody> {
  bool secure = true;
  IconData suffixIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          controller: widget.emailController,
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
          controller: widget.passwordController,
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
          height: 38,
        ),
        const CustomTitleFormField(
          image: AppImages.kPersonIcon,
          title: AppText.kName,
        ),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextNameField,
          keyboardType: TextInputType.name,
          controller: widget.nameController,
          validator: (value) {
            return Validator.validateName(value);
          },
        ),
        const SizedBox(
          height: 38,
        ),
        const CustomTitleFormField(
          image: AppImages.kPhoneIcon,
          title: AppText.kPhoneNumber,
        ),
        const SizedBox(
          height: 7,
        ),
        CustomTextFormField(
          hintText: AppText.kHintTextPhoneField,
          keyboardType: TextInputType.number,
          controller: widget.phoneController,
          validator: (value) {
            return Validator.validatePhone(value);
          },
        ),
      ],
    );
  }
}
