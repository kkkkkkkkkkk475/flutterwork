import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:workregex/splish.dart';

import 'bloodhospital.dart';
import 'BloodDonation.dart';
import 'Blood_Camp1.dart';
import 'blood_call_camp.dart';
import 'BloodDonationCampScreen.dart';

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
