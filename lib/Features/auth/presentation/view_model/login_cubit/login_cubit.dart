import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/loggers.dart';
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

    var result = await authRepo.login(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    result.fold((l) => emit(LoginFailureState(message: l.errorMessage)),
        (r) async {
      AppLogger.print("response - ${result.toString()}");
      await Hive.box(AppHive.tokenAndOnBoardingBox)
          .put(AppHive.accessToken, r.accessToken);
      await Hive.box(AppHive.tokenAndOnBoardingBox)
          .put(AppHive.refreshToken, r.refreshToken);
      emit(LoginSuccessState());
    });
  }

  bool secure = true;
  IconData suffixIcon = Icons.visibility;

  void changeSecure() {
    secure = !secure;
    suffixIcon = secure ? Icons.visibility : Icons.visibility_off;
    emit(ChangePasswordVisiable());
  }
}
