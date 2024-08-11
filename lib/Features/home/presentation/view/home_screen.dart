import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Features/home/data/repos/home_repo_implementation.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/home_body.dart';
import 'package:storeapp/Features/home/presentation/view_model/home_cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => HomeCubit(
            homeRepo: serviceLocator<HomeRepoImplementation>(),
          )
            ..getBanners()
            ..getCompanies()
            ..getCategories(),
          child: const HomeBody(),
        ),
      ),
    );
  }
}
