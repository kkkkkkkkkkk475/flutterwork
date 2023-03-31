import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SHOPING_ION.dart';
import 'package:flutter_application_1/lickitem.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/rahul.dart';
import 'package:flutter_application_1/splash2.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'account.dart';
import 'alert.dart';
import 'home_page.dart';
import 'meesho_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Shoping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
