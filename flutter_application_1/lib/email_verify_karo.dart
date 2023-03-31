import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/home_screen.dart';

import 'meesho_home.dart';

class EmailVerifyKaro extends StatefulWidget {
  const EmailVerifyKaro({super.key});

  @override
  State<EmailVerifyKaro> createState() => _EmailVerifyKaroState();
}

class _EmailVerifyKaroState extends State<EmailVerifyKaro> {
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      FirebaseAuth.instance.currentUser!.reload();

      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        timer.cancel();
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MeshoHome(),
            ),
            (route) => false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Email VErify karo')),
    );
  }
}
