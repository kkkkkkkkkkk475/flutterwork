import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images2 = [
    "assets/pink-sweater-front.jpg",
    "assets/pink-sweater-front.jpg",
    "assets/pink-sweater-front.jpg",
    "assets/pink-sweater-front.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: 100,
              decoration: BoxDecoration(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
