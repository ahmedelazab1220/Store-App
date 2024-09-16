import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Core/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/otps/presentation/view_model/otp_bloc/otp_bloc.dart';

class ForgetPasswordEmailBody extends StatelessWidget {
  const ForgetPasswordEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<OtpBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    'Enter your email address to enable 2-step verification',
                    style: Styles.textStyle16.copyWith(
                      fontStyle: FontStyle.italic,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    child: Text(
                      'Enter your email address',
                      style: Styles.textStyle16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: bloc.emailFormKey,
                  child: CustomTextFormField(
                    hintText: AppText.kEnterEmail,
                    hintStyle: Styles.textStyle12.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                    controller: bloc.emailController,
                    labelText: 'email address',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    validator: (value) {
                      return Validator.validateEmail(value);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocListener<OtpBloc, OtpState>(
                  listener: (context, state) {
                    if (state is OtpRequestSuccessState) {
                      GoRouter.of(context).push(AppRouter.kOtpScreen);
                    } else if (state is OtpRequestFailureState) {
                      showToast(
                        title: 'Make sure your email is correct',
                        color: AppColors.red,
                      );
                    }
                  },
                  child: CustomButton(
                    textButton: 'Continue',
                    onPressed: () {
                      if (bloc.emailFormKey.currentState!.validate()) {
                        bloc.add(const RequestOtpEvent());
                      }
                    },
                    redius: 20,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
