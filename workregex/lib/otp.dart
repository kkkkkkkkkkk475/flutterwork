import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workregex/shared_pref.dart';
import 'Complete_profile.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController OtpController = TextEditingController();
  bool otpsent = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Color(0xff303030),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'OTP Verification        ',
            style: GoogleFonts.roboto(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xff303030)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'We’ve send you the OTP. Please enter below the OTP received',
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff667685)),
          ),
          SizedBox(
            height: 87,
          ),
          Center(
            child: Text(
              'Enter the OTP received',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff303030)),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          PinCodeFields(
            controller: OtpController,
            fieldHeight: 48,
            fieldWidth: 40,
            keyboardType: TextInputType.number,
            activeBackgroundColor: Color(0xffC2B8B8),
            fieldBackgroundColor: Color(0xffC2B8B8),
            length: 6,
            onComplete: (String value) {
              setState(() {
                OtpController.text = value;
              });
            },
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 54, width: 328),
              child: ElevatedButton(
                onPressed: () async {
                  bool value = await SharedPref.setSharedString(
                      SharedPref.tokenKeyName, '');
                  if (value) {}
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                      (route) => false);
                  (verificationIdData.toString());

                  var otpcontroller;
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: verificationIdData!,
                      smsCode: otpcontroller.text);

                  // Sign the user in (or link) with the credential
                  await firebaseAuth
                      .signInWithCredential(credential)
                      .then((value) {
                    SharedPreferences.getInstance().then((sharedPrefs) {
                      sharedPrefs.setBool('user_verify', true);
                    });
                    (value.user!.phoneNumber.toString());
                  });
                },
                child: Text(
                  'CONFIRM',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 175, 15, 4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(69))),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Center(
            child: Text(
              'Resend OTP',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff667685)),
            ),
          )
        ]),
      ),
    );
  }
}
