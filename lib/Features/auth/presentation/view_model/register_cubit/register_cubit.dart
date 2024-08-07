import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/loggers.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  bool secure = true;
  IconData suffixIcon = Icons.visibility;

  void changeRegisterPasswordSuffixIcon() {
    secure = !secure;
    AppLogger.print("$secure");
    suffixIcon = secure ? Icons.visibility : Icons.visibility_off;
    emit(ChangeRegisterPasswordSuffixIcon());
  }
}
