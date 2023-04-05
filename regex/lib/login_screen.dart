import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hideValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 32, left: 16),
              child: Image.asset(
                'assets/back_icon.png',
                height: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Log in',
              style: GoogleFonts.comfortaa(
                  fontSize: 36, fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'jane@example.com',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              obscureText: hideValue,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      hideValue = !hideValue;
                    });
                  },
                  child: Icon(
                    hideValue ? Icons.remove_red_eye : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePageScreen()));
              },
              child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
