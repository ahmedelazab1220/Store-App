import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/edit_profile_container_view_body.dart';
import 'package:storeapp/Features/profile/presentation/view_model/profile_cubit/profile_cubit.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UpdateProfileFailureSate) {
          showToast(
            title: 'فشل تحديث الملف الشخصي',
            color: AppColors.red,
          );
        } else {
          showToast(
            title: 'تم تحديث الملف الشخصي بنجاح',
            color: AppColors.kPrimaryColor,
          );
        }
      },
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: EditProfileContainerViewBody(),
        );
      },
    );
  }
}
