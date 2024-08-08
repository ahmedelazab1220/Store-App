part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class ChangePasswordVisiable extends LoginState {}

class LoginFailureState extends LoginState {
  final String message;
  const LoginFailureState({
    required this.message,
  });
}
