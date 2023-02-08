import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clone_airbnb/components/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 800,
      splash: 'assets/images/logo.png',
      splashIconSize: 40,
      nextScreen: const BottomNavigationBarWidget(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
