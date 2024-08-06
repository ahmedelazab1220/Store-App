import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/bloc_observer.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Core/utils/routers.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  setup();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const StoreApp(), // Wrap your app
    ),
    //const StoreApp(),
  );
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
