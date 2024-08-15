import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Features/profile/presentation/view_model/profile_cubit/profile_cubit.dart';

class ProfileBodyImage extends StatelessWidget {
  const ProfileBodyImage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UpdateProfileImageSuccess) {
          Hive.box(AppHive.userBox).put(AppHive.userImage, state.imageUrl);
          showToast(
              title: AppText.kUpdateUserImageSuccess,
              color: AppColors.kPrimaryColor);
        } else if (state is UpdateProfileImageFailure) {
          showToast(
              title: AppText.kUpdateUserImageFailure, color: AppColors.red);
        }
      },
      builder: (context, state) {
        return Stack(
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
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.kPrimaryColor,
                ),
                child: IconButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.camera);

                    if (image != null) {
                      cubit.myFile = File(image.path);
                      cubit.updateImage();
                    }
                  },
                  icon: const Icon(
                    LineAwesomeIcons.pencil_alt_solid,
                    color: AppColors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
