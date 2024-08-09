part of 'login_cubit.dart';

abstract class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class ChangePasswordVisibility extends LoginState {}

class LoginFailureState extends LoginState {
  final String message;
  LoginFailureState({
    required this.message,
  });
}
