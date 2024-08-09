import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/member_or_not.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/custom_add_image.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_address_container_body.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_personal_container_body.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class RegisterViewContainerBody extends StatelessWidget {
  const RegisterViewContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
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
                  stateController: cubit.stateController,
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
                BlocConsumer<RegisterCubit, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterSuccessState) {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kLoginScreen);
                      showToast(
                        title: AppText.kDoSuccessAccount,
                        color: AppColors.kPrimaryColor,
                      );
                    } else if (state is RegisterFailureState) {
                      showToast(
                        title: state.message,
                        color: AppColors.red,
                      );
                    }
                  },
                  builder: (context, state) {
                    return CustomButton(
                      textButton: AppText.kRegister,
                      width: 174,
                      onPressed: () {
                        if (cubit.myFile == null) {
                          showToast(
                            title: AppText.kImageRequiredField,
                            color: AppColors.red,
                          );
                          return;
                        }
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.register();
                        }
                      },
                    );
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
