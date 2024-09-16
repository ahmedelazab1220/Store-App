import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/otps/presentation/view/widgets/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        title: Text(
          'Verification',
          style: Styles.textStyle19.copyWith(color: Colors.black),
        ),
      ),
      body: const OtpBody(),
    );
  }
}
