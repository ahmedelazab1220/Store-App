import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';

class RegisterViewAddressContainerBody extends StatelessWidget {
  const RegisterViewAddressContainerBody({
    super.key,
    required this.cityController,
    required this.stateController,
    required this.streetController,
    required this.zipCodeController,
  });

  final TextEditingController stateController;
  final TextEditingController cityController;
  final TextEditingController streetController;
  final TextEditingController zipCodeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const CustomTitleFormField(
                    image: AppImages.kAddressIcon,
                    title: AppText.kState,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                    hintText: AppText.kHintTextStateField,
                    keyboardType: TextInputType.streetAddress,
                    controller: stateController,
                    validator: (value) {
                      return Validator.validateAddress(value);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  const CustomTitleFormField(
                    image: AppImages.kAddressIcon,
                    title: AppText.kCity,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                    hintText: AppText.kHintTextCityField,
                    keyboardType: TextInputType.streetAddress,
                    controller: cityController,
                    validator: (value) {
                      return Validator.validateAddress(value);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 38,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const CustomTitleFormField(
                    image: AppImages.kAddressIcon,
                    title: AppText.kStreet,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                    hintText: AppText.kHintTextStreetField,
                    keyboardType: TextInputType.streetAddress,
                    controller: streetController,
                    validator: (value) {
                      return Validator.validateAddress(value);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  const CustomTitleFormField(
                    image: AppImages.kAddressIcon,
                    title: AppText.kZipCode,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                    hintText: AppText.kHintTextZipCodeField,
                    keyboardType: TextInputType.number,
                    controller: zipCodeController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
