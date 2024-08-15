import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_parser/http_parser.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/profile/data/repos/profile_repo.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileRepo}) : super(ProfileInitial());

  final ProfileRepo profileRepo;
  TextEditingController nameController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userName),
  );
  TextEditingController phoneNumberController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userPhoneNumber),
  );
  TextEditingController cityController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userCityAddress),
  );
  TextEditingController stateController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userStateAddress),
  );
  TextEditingController streetController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userStreetAddress),
  );
  TextEditingController zipCodeController = TextEditingController(
    text: Hive.box(AppHive.userBox).get(AppHive.userZipCodeAddress),
  );
  GlobalKey<FormState> formKey = GlobalKey();

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

  Future<void> updateProfile() async {
    var result = await profileRepo.updateUserProfile(
      name: nameController.text,
      email: Hive.box(AppHive.userBox).get(AppHive.userEmail),
      phoneNumber: phoneNumberController.text,
      street: streetController.text,
      city: cityController.text,
      state: stateController.text,
      zipCode: zipCodeController.text,
    );

    result.fold((l) => emit(UpdateProfileFailureSate(message: l.errorMessage)),
        (r) {
      AppLogger.print("response - ${result.toString()}");
      emit(UpdateProfileSuccessSate());
    });
  }
}
