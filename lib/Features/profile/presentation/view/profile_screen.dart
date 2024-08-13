import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/profile/data/repos/profile_repo_implementation.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/profile_body.dart';
import 'package:storeapp/Features/profile/presentation/view_model/profile_cubit/profile_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          AppText.kMyAccount,
          style: Styles.textStyle25.copyWith(
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.5,
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => ProfileCubit(
          profileRepo: serviceLocator<ProfileRepoImplementation>(),
        ),
        child: const ProfileBody(),
      ),
    );
  }
}
