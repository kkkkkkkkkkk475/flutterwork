import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String text = 'Go to Login';
  File? file;

  getImage() async {
    await ImagePicker().getImage(source: ImageSource.gallery).then((value) {
      setState(() {
        file = File(value!.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff03fca5),
            leading:
                const Icon(Icons.arrow_back, color: Colors.black, size: 30),
            title: const Text('My AppBar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                    color: Colors.black)),
            actions: [
              IconButton(
                  onPressed: () {
                    getImage();
                  },
                  icon: const Icon(Icons.photo)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.access_alarm),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.access_alarm),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.access_alarm),
              )
            ],
            actionsIconTheme:
                const IconThemeData(color: Colors.white, size: 30),
            automaticallyImplyLeading: false,
          ),
          body: file == null
              ? Image.network(
                  'https://plus.unsplash.com/premium_photo-1678911006781-924ac672e3f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height,
                )
              : Image.file(
                  file!,
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height,
                )),
    );
  }
}
