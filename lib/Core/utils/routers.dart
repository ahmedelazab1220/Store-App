import 'package:go_router/go_router.dart';
import 'package:storeapp/Features/auth/presentation/view/login_screen.dart';
import 'package:storeapp/Features/auth/presentation/view/register_screen.dart';
import 'package:storeapp/Features/home/presentation/view/home_screen.dart';
import 'package:storeapp/Features/home/presentation/view/nav_bar/nav_bar_view.dart';
import 'package:storeapp/Features/onBoarding/presentation/view/on_boarding_screen.dart';
import 'package:storeapp/Features/otps/presentation/view/otp_screen.dart';
import 'package:storeapp/Features/otps/presentation/view/reset_password_email_screen.dart';
import 'package:storeapp/Features/profile/presentation/view/edit_profile_screen.dart';
import 'package:storeapp/Features/profile/presentation/view/profile_screen.dart';
import 'package:storeapp/Features/splash/presentation/view/splash_screen.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';
  static const String kOnBoardingScreen = '/OnBoardingScreen';
  static const String kLoginScreen = '/LoginScreen';
  static const String kRegisterScreen = '/RegisterScreen';
  static const String kNavBarView = '/NavBarView';
  static const String kHomeScreen = '/HomeScreen';
  static const String kProfileScreen = '/ProfileScreen';
  static const String kEditProfileScreen = '/EditProfileScreen';
  static const String kResetPasswordEmailScreen = '/ResetPasswordEmailScreen';
  static const String kOtpScreen = '/OtpScreen';
  static const String kResetPasswordScreen = '/ResetPasswordScreen';
  static const String kForgetPasswordEmailScreen = '/ForgetPasswordEmailScreen';

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
      GoRoute(
        path: kNavBarView,
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kProfileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: kEditProfileScreen,
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: kForgetPasswordEmailScreen,
        builder: (context, state) => const ForgetPasswordEmailScreen(),
      ),
      GoRoute(
        path: kOtpScreen,
        builder: (context, state) => const OtpScreen(),
      ),
    ],
  );
}
