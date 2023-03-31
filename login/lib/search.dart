import 'package:flutter/material.dart';

class SEARCH extends StatefulWidget {
  const SEARCH({super.key});

  @override
  State<SEARCH> createState() => _SEARCHState();
}

class _SEARCHState extends State<SEARCH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.camera_alt_outlined))))),
      ],
    ));
  }
}
