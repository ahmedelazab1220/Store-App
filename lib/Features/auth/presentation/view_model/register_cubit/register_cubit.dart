import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required this.authRepo,
  }) : super(RegisterInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  File? myFile;
  final AuthRepo authRepo;

  Future<void> register() async {
    emit(RegisterLoading());

    var result = await authRepo.register(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
      phoneNumber: phoneNumberController.text.trim(),
      state: stateController.text.trim(),
      street: streetController.text.trim(),
      city: cityController.text.trim(),
      image: await MultipartFile.fromFile(
        myFile!.path,
        filename: "user.png",
        contentType: MediaType("image", "svg+xml"),
      ),
      name: nameController.text.trim(),
      zipCode: zipCodeController.text.trim(),
    );

    result.fold((l) => emit(RegisterFailureState(message: l.errorMessage)),
        (r) {
      AppLogger.print("response - ${result.toString()}");
      emit(RegisterSuccessState());
    });
  }

  bool secure = true;
  IconData suffixIcon = Icons.visibility;

  void changeSecure() {
    secure = !secure;
    suffixIcon = secure ? Icons.visibility : Icons.visibility_off;
    emit(ChangePasswordVisibility());
  }
}
