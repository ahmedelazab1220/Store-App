import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_parser/http_parser.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/profile/data/repos/profile_repo.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileRepo}) : super(ProfileInitial());

  final ProfileRepo profileRepo;

  File? myFile;

  Future<void> updateImage() async {
    emit(UpdateProfileImageLoading());

    var result = await profileRepo.updateUserImage(
      image: await MultipartFile.fromFile(
        myFile!.path,
        filename: "user.png",
        contentType: MediaType("image", "svg+xml"),
      ),
      email: Hive.box(AppHive.userBox).get(AppHive.userEmail),
      oldImageUrl: Hive.box(AppHive.userBox).get(
        AppHive.userImage,
      ),
    );

    result.fold((l) => emit(UpdateProfileImageFailure(message: l.errorMessage)),
        (r) {
      AppLogger.print("response - ${result.toString()}");
      emit(UpdateProfileImageSuccess(imageUrl: r.image));
    });
  }
}
