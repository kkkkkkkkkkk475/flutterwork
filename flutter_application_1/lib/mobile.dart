import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/meesho_home.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

class mobiles extends StatefulWidget {
  const mobiles({super.key});

  @override
  State<mobiles> createState() => _mobilesState();
}

class _mobilesState extends State<mobiles> {
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  bool otpsent = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 200,
        ),
        if (!otpsent)
          Column(    
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: phonenumbercontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Input Mobile Number',
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 50, width: 330),
                child: ElevatedButton(
                  onPressed: () async {
                    await firebaseAuth
                        .verifyPhoneNumber(
                      phoneNumber: '+91 ${phonenumbercontroller.text}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        setState(() {
                          verificationIdData = verificationId;
                          otpsent = true;
                        });
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    )
                        .onError((error, stackTrace) {
                      log(error.toString());
                    });
                  },
                  child: Text('SUBMIT'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.cyan[600],
                  ),
                ),
              ),
            ],
          )
        else
          Column(
            children: [
              PinCodeFields(
                controller: otpcontroller,
                length: 6,
                onComplete: (String value) {
                  setState(() {
                    otpcontroller.text = value;
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 50, width: 330),
                child: ElevatedButton(
                    onPressed: () async {
                      log(verificationIdData.toString());
                   
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: verificationIdData!,
                              smsCode: otpcontroller.text);

                      // Sign the user in (or link) with the credential
                      await firebaseAuth
                          .signInWithCredential(credential)
                          .then((value) {
                        SharedPreferences.getInstance().then((sharedPrefs) {
                          sharedPrefs.setBool('user_verify', true);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MeshoHome(),
                              ),
                              (route) => false);
                        });
                        log(value.user!.phoneNumber.toString());
                      });
                    },
                    child: Text('OTP Verify')),
              ),
            ],
          ),
      ]),
    );
  }
}
