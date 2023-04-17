import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/signuplogin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>const SignUpLoginScreen(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "LOGO",
          style: GoogleFonts.roboto(
              fontSize: 60,
              fontWeight: FontWeight.w500,
              color:const Color(0xffBF222B)),
        ),
     ),
);
}
}