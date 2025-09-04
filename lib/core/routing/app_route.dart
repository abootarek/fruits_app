import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/di/dependaince_injection.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/featuers/auth/condition_and_tem/condition_and_tem_screen.dart';
import 'package:fruits/featuers/auth/forget_password/foreget_password.dart';
import 'package:fruits/featuers/auth/login/ui/login_screen.dart';
import 'package:fruits/featuers/auth/constantis/data/repo/auth_repo.dart';
import 'package:fruits/featuers/auth/register/logic/cubit/sign_up_cubit.dart';
import 'package:fruits/featuers/auth/register/ui/register_screen.dart';
import 'package:fruits/featuers/home/home_screen.dart';
import 'package:fruits/featuers/onBording/onbording_screen.dart';
import 'package:fruits/featuers/splash/splash_screen.dart';

import '../../featuers/auth/login/cubit/login_cubit.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => SignInCubit(getIt<AuthRepo>()),
            child: LoginScreen(),
          ),
        );
      // register Screen
      case Routers.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpCubit(getIt<AuthRepo>()),
            child: RegisterScreen(),
          ),
        );
      // condition and terms Screen
      case Routers.conditionAndTermsScreen:
        return MaterialPageRoute(
          builder: (_) => ConditionAndTemScreen(),
        );
      // forget password Screen
      case Routers.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPassword(),
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
