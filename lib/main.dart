import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/bloc_observer.dart';
import 'package:storeapp/Core/utils/routers.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
