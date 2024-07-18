import 'package:go_router/go_router.dart';
import 'package:storeapp/Features/onScreen/presentation/view/on_one_screen.dart';
import 'package:storeapp/Features/splash/presentation/view/splash_screen.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';
  static const String kOnOneScreen = '/OnOneScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnOneScreen,
        builder: (context, state) => const OnOneScreen(),
      ),
    ],
  );
}
