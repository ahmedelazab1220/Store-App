import 'package:go_router/go_router.dart';
import 'package:storeapp/Features/home/presentation/views/home_screen.dart';
import 'package:storeapp/Features/notification/presentation/views/notification_screen.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/on_boarding_screen.dart';
import 'package:storeapp/Features/splash/presentation/view/splash_screen.dart';

import '../../Features/products_company/presentation/view/view.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';
  static const String kOnBoardingScreen = '/OnBoardingScreen';
  static const String kHomeScreen = '/HomeScreen';
  static const String kNotification = '/Notification';
  static const String kProductsCompanyScreen = '/ProductsCompanyScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kNotification,
        builder: (context, state) => const NotificationScreen(),
      ),
      GoRoute(
        path: kProductsCompanyScreen,
        builder: (context, state) => const ProductsCompanyScreen(),
      ),
    ],
  );
}
