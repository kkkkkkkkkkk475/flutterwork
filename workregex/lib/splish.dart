// ignore_for_file: unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workregex/reuse.dart';
import 'package:workregex/shared_pref.dart';
import 'logo.dart';

class Splish extends StatefulWidget {
  const Splish({super.key});

  @override
  State<Splish> createState() => _SplishState();
}

class _SplishState extends State<Splish> {
  @override
  void initState() {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () {
    //     SharedPref.getSharedString(SharedPref.tokenKeyName).then((value) {
    //       if (value.isNotEmpty) {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => const Logo(),
    //             ));
    //       } else {}
    //     });
    //   },
    // );
    Future.delayed(Duration(seconds: 3),(){   Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Logo(),
                ));

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 167, 15, 4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'NGO Blood Camp\nand donation bLOOD ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Image.asset(spleshimage),
        ],
      ),
    );
  }
}
