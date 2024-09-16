import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/otps/data/repos/otp_repo_implementation.dart';
import 'package:storeapp/Features/otps/presentation/view/widgets/reset_password_email_body.dart';
import 'package:storeapp/Features/otps/presentation/view_model/otp_bloc/otp_bloc.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification',
          style: Styles.textStyle19.copyWith(color: Colors.black),
        ),
      ),
      body: BlocProvider(
        create: (context) => OtpBloc(
          otpRepo: serviceLocator<OtpRepoImplementation>(),
        ),
        child: const ForgetPasswordEmailBody(),
      ),
    );
  }
}
