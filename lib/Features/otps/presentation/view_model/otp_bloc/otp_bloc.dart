import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/otps/data/repos/otp_repo.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc({required this.otpRepo}) : super(OtpInitialState()) {
    on<OtpEvent>(
      (event, emit) {},
    );
    on<VerifyOtpEvent>(
      (event, emit) {},
    );
    on<RequestOtpEvent>(_onRequestOtp);
  }

  final OtpRepo otpRepo;
  TextEditingController emailController = TextEditingController();
  late String otpCode;
  GlobalKey<FormState> otpFormKey = GlobalKey();
  GlobalKey<FormState> emailFormKey = GlobalKey();

  Future<void> _onRequestOtp(
      RequestOtpEvent event, Emitter<OtpState> emit) async {
    emit(OtpRequestInProgressState());
    var result = await otpRepo.requestOtp(email: emailController.text.trim());
    result.fold((l) {
      emit(OtpRequestFailureState(errorMessage: l.errorMessage));
    }, (r) {
      AppLogger.print("response - ${result.toString()}");
      emit(OtpRequestSuccessState());
    });
  }
}
