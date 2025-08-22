import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits/core/routing/app_route.dart';
import 'package:fruits/core/routing/routers.dart';

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
          debugShowCheckedModeBanner: false,
          title: 'Fruits E-Commerce',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          onGenerateRoute: appRouting.generateRoute,
          initialRoute: Routers.splashScreen,
        );
      },
    );
  }
}
