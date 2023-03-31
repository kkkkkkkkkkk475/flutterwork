
import 'dart:developer';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:country_phone_code_picker/core/country_phone_code.dart';
import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginscreen1 extends StatefulWidget {
  const Loginscreen1({super.key});

  @override
  State<Loginscreen1> createState() => _Loginscreen1State();
}

class _Loginscreen1State extends State<Loginscreen1> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('assets/000.jpeg'),
        nextScreen: Rahul(),
        splashIconSize: 50,
        backgroundColor: Colors.red,
        splashTransition: SplashTransition.rotationTransition);
  }
}
