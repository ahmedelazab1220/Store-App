import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_body.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => RegisterCubit(),
          child: const RegisterBody(),
        ),
      ),
    );
  }
}
