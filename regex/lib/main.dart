import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regex/auth_controller.dart';
import 'package:regex/splash.dart';
import 'package:regex/ui_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthController()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REGEX',
      // theme: UiHelper.theme(context.watch<AuthController>().theme),
      theme: UiHelper.theme(ThemeEnum.Light),
      home: SplashScreen(),
    );
  }
}
