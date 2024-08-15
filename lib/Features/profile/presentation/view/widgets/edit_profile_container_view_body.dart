import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/validator.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Core/widgets/custom_text_form_field.dart';
import 'package:storeapp/Core/widgets/custom_title_text_form_field.dart';
import 'package:storeapp/Features/profile/presentation/view_model/profile_cubit/profile_cubit.dart';

class EditProfileContainerViewBody extends StatelessWidget {
  const EditProfileContainerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: cubit.formKey,
            child: Column(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.kPrimaryColor.withOpacity(0.8),
                      width: 2.7,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: CachedNetworkImage(
                      imageUrl:
                          "${AppApis.getImages}${Hive.box(AppHive.userBox).get(AppHive.userImage)}",
                      placeholder: (context, url) => Container(
                        color: AppColors.grey,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
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
                  controller: cubit.nameController,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    return Validator.validateName(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitleTextFormField(
                  image: AppImages.kPhoneIcon,
                  title: AppText.kPhoneNumber,
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormField(
                  hintText: AppText.kPhoneNumber,
                  keyboardType: TextInputType.number,
                  controller: cubit.phoneNumberController,
                  validator: (value) {
                    return Validator.validatePhone(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitleTextFormField(
                  image: AppImages.kAddressIcon,
                  title: AppText.kState,
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormField(
                  hintText: AppText.kHintTextStateField,
                  keyboardType: TextInputType.streetAddress,
                  controller: cubit.stateController,
                  validator: (value) {
                    return Validator.validateAddress(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitleTextFormField(
                  image: AppImages.kAddressIcon,
                  title: AppText.kCity,
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormField(
                  hintText: AppText.kHintTextCityField,
                  keyboardType: TextInputType.streetAddress,
                  controller: cubit.cityController,
                  onChanged: (value) {
                    AppLogger.print(cubit.cityController);
                  },
                  validator: (value) {
                    return Validator.validateAddress(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitleTextFormField(
                  image: AppImages.kAddressIcon,
                  title: AppText.kStreet,
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormField(
                  hintText: AppText.kHintTextStreetField,
                  keyboardType: TextInputType.streetAddress,
                  controller: cubit.streetController,
                  validator: (value) {
                    return Validator.validateAddress(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitleTextFormField(
                  image: AppImages.kAddressIcon,
                  title: AppText.kZipCode,
                ),
                const SizedBox(
                  height: 7,
                ),
                CustomTextFormField(
                  hintText: AppText.kHintTextZipCodeField,
                  keyboardType: TextInputType.number,
                  controller: cubit.zipCodeController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  textButton: 'حفظ التعديلات',
                  onPressed: () {
                    if (cubit.formKey.currentState!.validate()) {
                      cubit.updateProfile();
                    }
                  },
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  redius: 10.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
