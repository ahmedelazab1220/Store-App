part of 'register_cubit.dart';

abstract class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

class RegisterSuccessState extends RegisterState {}

class ChangePasswordVisibility extends RegisterState {}

class RegisterFailureState extends RegisterState {
  final String message;
  RegisterFailureState({
    required this.message,
  });
}
