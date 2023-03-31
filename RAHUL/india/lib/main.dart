import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:india/Regex.dart';
import 'package:india/countr.dart';
import 'package:india/country.dart';
import 'package:india/cro.dart';
import 'package:india/dro.dart';
import 'package:india/login1.dart';
import 'package:india/rigester.dart';
import 'package:india/skip.dart';

import 'package:india/ux.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "msbckj",
      home: contr(),
    );
  }
}
