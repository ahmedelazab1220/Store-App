import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo_implementation.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/login/login_body.dart';
import 'package:storeapp/Features/auth/presentation/view_model/login_cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => LoginCubit(
            authRepo: serviceLocator<AuthRepoImplementation>(),
          ),
          child: const LoginBody(),
        ),
      ),
    );
  }
}
