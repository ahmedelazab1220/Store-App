part of 'otp_bloc.dart';

abstract class OtpEvent extends Equatable {
  const OtpEvent();

  @override
  List<Object> get props => [];
}

final class RequestOtpEvent extends OtpEvent {
  const RequestOtpEvent();

  @override
  List<Object> get props => [];
}

final class VerifyOtpEvent extends OtpEvent {
  const VerifyOtpEvent();

  @override
  List<Object> get props => [];
}

final class ResendOtpEvent extends OtpEvent {
  const ResendOtpEvent();

  @override
  List<Object> get props => [];
}
