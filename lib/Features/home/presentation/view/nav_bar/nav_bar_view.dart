import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/home/presentation/view/home_screen.dart';
import 'package:storeapp/Features/profile/presentation/view/profile_screen.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final _controller = PersistentTabController();

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: AppText.kHome,
        activeColorPrimary: Colors.lightBlue,
        inactiveColorPrimary: AppColors.white,
        textStyle: Styles.textStyle13,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.discount_outlined),
        title: AppText.kDiscounts,
        activeColorPrimary: Colors.lightBlue,
        inactiveColorPrimary: AppColors.white,
        textStyle: Styles.textStyle13,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.cartShopping,
          size: 20,
        ),
        title: AppText.kCart,
        activeColorPrimary: Colors.lightBlue,
        inactiveColorPrimary: AppColors.white,
        textStyle: Styles.textStyle13,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.user,
          size: 20,
        ),
        title: AppText.kMyAccount,
        activeColorPrimary: Colors.lightBlue,
        inactiveColorPrimary: AppColors.white,
        textStyle: Styles.textStyle13,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineToSafeArea: true,
        backgroundColor: AppColors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        navBarHeight: 78,
        decoration: NavBarDecoration(
          colorBehindNavBar: AppColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          gradient: LinearGradient(
            colors: AppColors.gradientColors,
          ),
        ),
        padding: const EdgeInsets.only(
          left: 45.0,
          right: 45.0,
          top: 24,
          bottom: 6.0,
        ),
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
