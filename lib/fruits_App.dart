import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/routing/app_route.dart';
import 'package:fruits/core/routing/routers.dart';
import 'package:fruits/core/theming/colors_app.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FruitsApp extends StatelessWidget {
  const FruitsApp({super.key, required this.appRouting});
  final AppRouting appRouting;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          //   locale: Locale('ar'),
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Fruits E-Commerce',
          theme: ThemeData(
            fontFamily: 'Cairo',
            scaffoldBackgroundColor: ColorsApp.backGroundWhite,
          ),
          onGenerateRoute: appRouting.generateRoute,
          initialRoute: Routers.splashScreen,
        );
      },
    );
  }
}
