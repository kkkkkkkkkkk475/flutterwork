import 'dart:io';

import 'package:flutter/material.dart';
import 'package:regex/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REGEX',
      theme: ThemeData(
        primaryColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.black),
        primaryIconTheme: const IconThemeData(color: Colors.black),
      ),
      home: const SplashScreen(),
    );
  }
}
