import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/custom_add_image.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_address_container_body.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_personal_container_body.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class RegisterViewContainerBody extends StatefulWidget {
  const RegisterViewContainerBody({super.key});

  @override
  State<RegisterViewContainerBody> createState() =>
      _RegisterViewContainerBodyState();
}

class _RegisterViewContainerBodyState extends State<RegisterViewContainerBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: cubit.formKey,
                child: Column(
                  children: [
                    RegisterViewPersonalContainerBody(
                      emailController: cubit.emailController,
                      passwordController: cubit.passwordController,
                      nameController: cubit.nameController,
                      phoneController: cubit.phoneNumberController,
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    RegisterViewAddressContainerBody(
                      cityController: cubit.cityController,
                      countryController: cubit.countryController,
                      streetController: cubit.streetController,
                      zipCodeController: cubit.zipCodeController,
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
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.register();
                          /*GoRouter.of(context)
                              .pushReplacement(AppRouter.kSplashScreen);
                          */
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
      },
    );
  }
}
