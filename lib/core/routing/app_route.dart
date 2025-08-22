import 'package:flutter/material.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/featuers/onbording_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onBoarding screen
      case Routers.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnbordingScreen(),
        );

      default:
        return null;
    }
  }
}
