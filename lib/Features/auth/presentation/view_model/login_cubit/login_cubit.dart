import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  final AuthRepo authRepo;

  Future<void> login() async {
    emit(LoginLoadingState());

    var response = await authRepo.login(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
