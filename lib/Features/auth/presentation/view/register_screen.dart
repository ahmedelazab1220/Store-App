import 'package:flutter/material.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: RegisterBody(),
      ),
    );
  }
}
