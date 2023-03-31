import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:workregex/NGOaCTIVE.dart';
import 'package:workregex/bottomn.dart';
import 'package:workregex/DonationScreen.dart';
import 'package:workregex/login.dart';
import 'package:workregex/logo.dart';
import 'package:workregex/mobile.dart';
import 'package:workregex/profile.dart';
import 'package:workregex/splish.dart';

import 'AvailableBloodScreen.dart';
import 'LoginPage.dart';
import 'bloodAvailabilitySearch .dart';
import 'loginmobile.dart';
import 'notification.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Blood App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home2(),
    );
  }
}
