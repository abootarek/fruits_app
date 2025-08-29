import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fruits/core/cached/constants.dart';
import 'package:fruits/core/cached/sharedprefrance_singltone.dart';
import 'package:fruits/core/helper/navigation.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/featuers/splash/widgets/stack_custom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    _navigate();
  }

  Future<void> _navigate() async {
    final isFirstTime =
        SharedPreferenceSingleton.instance.getBool(isOnboardingSeen) ?? false;

    Timer(const Duration(seconds: 2), () {
      if (!isFirstTime) {
        SharedPreferenceSingleton.instance.setBool(isOnboardingSeen, true);
        context.pushReplacementNamed(Routers.onboardingScreen);
      } else {
        context.pushReplacementNamed(Routers.loginScreen);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsApp.whiteColor,
        body: FadeTransition(
          opacity: _animation,
          child: const StackCustome(),
        ),
      ),
    );
  }
}
