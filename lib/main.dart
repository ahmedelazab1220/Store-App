import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/bloc_observer.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Core/utils/routers.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(AppHive.tokenAndOnBoardingBox);
  await Hive.openBox(AppHive.userBox);
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
