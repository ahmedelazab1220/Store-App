import 'package:go_router/go_router.dart';
import 'package:storeapp/Features/splash/presentation/view/splash_screen.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
