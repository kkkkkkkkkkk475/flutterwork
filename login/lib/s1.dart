import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/log.dart';

class sp extends StatefulWidget {
  const sp({super.key, required String title});

  @override
  State<sp> createState() => _spState();
}

class _spState extends State<sp> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => L(
            title: '',
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 237, 243),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'assets/regex.jpeg',
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text('')
        ],
      ),
    );
  }
}
