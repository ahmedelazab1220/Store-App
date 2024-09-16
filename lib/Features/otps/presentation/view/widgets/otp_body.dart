import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/otps/presentation/view/widgets/otp_body_item_code.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              "We send you a code to verify your email address",
              style: Styles.textStyle17.copyWith(
                color: AppColors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Enter you OTP code here",
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle18.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Form(
            //key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpBodyItemCode(),
                OtpBodyItemCode(),
                OtpBodyItemCode(),
                OtpBodyItemCode(),
                OtpBodyItemCode(),
                OtpBodyItemCode(),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomButton(
                    textButton: 'تأكيد',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: CustomButton(
                    textButton: 'إعادة إرسال',
                    onPressed: () {},
                    color: const Color.fromARGB(255, 211, 215, 223),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
