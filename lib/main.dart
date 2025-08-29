import 'package:flutter/material.dart';
import 'package:fruits/core/cached/sharedprefrance_singltone.dart';
import 'package:fruits/core/routing/app_route.dart';
import 'package:fruits/fruits_App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceSingleton.init();
  runApp(
    FruitsApp(
      appRouting: AppRouting(),
    ),
  );
}
