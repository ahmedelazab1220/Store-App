import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/custom_add_image.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_address_container_body.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_personal_container_body.dart';

class RegisterViewContainerBody extends StatefulWidget {
  const RegisterViewContainerBody({super.key});

  @override
  State<RegisterViewContainerBody> createState() =>
      _RegisterViewContainerBodyState();
}

class _RegisterViewContainerBodyState extends State<RegisterViewContainerBody> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                RegisterViewPersonalContainerBody(
                  emailController: emailController,
                  passwordController: passwordController,
                  nameController: nameController,
                  phoneController: phoneController,
                ),
                const SizedBox(
                  height: 38,
                ),
                RegisterViewAddressContainerBody(
                  cityController: cityController,
                  countryController: countryController,
                  streetController: streetController,
                  zipCodeController: zipCodeController,
                ),
                const SizedBox(
                  height: 38,
                ),
                const CustomAddImage(),
                const SizedBox(
                  height: 48,
                ),
                CustomButton(
                  textButton: AppText.kRegister,
                  width: 174,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kSplashScreen);
                    }
                  },
                ),
                const SizedBox(
                  height: 51,
                ),
                MemberOrNot(
                  text: AppText.kHaveAccount,
                  textButton: AppText.kDoLogin,
                  onPressed: () {
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.kLoginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
