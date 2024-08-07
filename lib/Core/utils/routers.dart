import 'package:go_router/go_router.dart';
import 'package:storeapp/Features/auth/presentation/view/login_screen.dart';
import 'package:storeapp/Features/auth/presentation/view/register_screen.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/on_boarding_screen.dart';
import 'package:storeapp/Features/splash/presentation/view/splash_screen.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';
  static const String kOnBoardingScreen = '/OnBoardingScreen';
  static const String kLoginScreen = '/LoginScreen';
  static const String kRegisterScreen = '/RegisterScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kRegisterScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
