import 'package:flutter/material.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/featuers/auth/login/login_screen.dart';
import 'package:fruits/featuers/home/home_screen.dart';
import 'package:fruits/featuers/onBording/onbording_screen.dart';
import 'package:fruits/featuers/splash/splash_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // splash Screen
      case Routers.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      // onBoarding screen
      case Routers.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      // login Screen
      case Routers.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      // home Screen
      case Routers.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      default:
        return null;
    }
  }
}
