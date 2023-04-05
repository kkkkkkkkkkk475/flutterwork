import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:workregex/logo.dart';
import 'package:workregex/otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  bool otpsent = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;

  @override
  void initState() {
    super.initState();
    phonenumbercontroller.text = "7878593167";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Color(0xFF303030)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                "Forgot Password",
                style: GoogleFonts.roboto(
                    fontSize: 34, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 56,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.roboto(
                          color: Color(0xFF303030),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      hintText: "Enter Mobile Number",
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have account",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF667685)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Logo(),
                            ));
                      },
                      child: Text(
                        "SIGNIN",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFF0202)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 54, width: 350),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Otp(),
                          ));
                    },
                    child: Text(
                      'SEND OTP',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(69)),
                      backgroundColor: const Color.fromARGB(255, 204, 18, 4),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
