import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/profile/data/repos/profile_repo_implementation.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/edit_profile_body.dart';
import 'package:storeapp/Features/profile/presentation/view_model/profile_cubit/profile_cubit.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        profileRepo: serviceLocator<ProfileRepoImplementation>(),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.white,
            elevation: 0.5,
            automaticallyImplyLeading: false,
            title: Text(
              AppText.kEditProfile,
              style: Styles.textStyle14.copyWith(
                color: AppColors.kPrimaryColor,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kPrimaryColor,
                    size: 20,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              )
            ],
          ),
          body: const EditProfileBody(),
        ),
      ),
    );
  }
}
