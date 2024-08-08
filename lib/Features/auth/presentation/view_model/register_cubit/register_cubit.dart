import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  final AuthRepo authRepo;

  Future<void> register() async {
    emit(RegisterLoading());

    try {
      final response = await authRepo.register(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        phoneNumber: phoneNumberController.text.trim(),
        country: countryController.text.trim(),
        street: streetController.text.trim(),
        city: cityController.text.trim(),
        file: File('"C:/Users/Lenovo/Pictures/Saved Pictures/google.png"'),
      );
      AppLogger.print("response - ${response.toString()}");
      emit(RegisterSuccessState());
    } on Exception catch (e) {
      e.hashCode;
      AppLogger.print(e.toString());
      emit(const RegisterFailureState(message: 'Error Occurred'));
    }
  }
}
