import 'package:flutter/material.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/login/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
