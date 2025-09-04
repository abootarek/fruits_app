import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/cached/sharedprefrance_singltone.dart';
import 'package:fruits/core/di/dependaince_injection.dart';
import 'package:fruits/core/helper/bloc_obserer.dart';
import 'package:fruits/core/routing/app_route.dart';
import 'package:fruits/firebase_options.dart';
import 'package:fruits/fruits_App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  //await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

  await SharedPreferenceSingleton.init();
  setup();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    FruitsApp(
      appRouting: AppRouting(),
    ),
  );
}
