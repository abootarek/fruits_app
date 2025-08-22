import 'package:flutter/material.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/featuers/splash/splash_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onBoarding screen
      case Routers.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );

      default:
        return null;
    }
  }
}
