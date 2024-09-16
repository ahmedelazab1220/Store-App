part of 'otp_bloc.dart';

abstract class OtpState extends Equatable {
  const OtpState();

  @override
  List<Object> get props => [];
}

final class OtpInitialState extends OtpState {}

final class OtpRequestInProgressState extends OtpState {}

final class OtpRequestSuccessState extends OtpState {}

class OtpRequestFailureState extends OtpState {
  final String errorMessage;

  const OtpRequestFailureState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class OtpVerificationInProgressState extends OtpState {}

final class OtpVerificationSuccessState extends OtpState {}

final class OtpVerificationFailureState extends OtpState {
  final String errorMessage;

  const OtpVerificationFailureState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
