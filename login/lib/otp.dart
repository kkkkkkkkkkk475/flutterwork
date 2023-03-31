import 'dart:developer';

import 'package:email_otp/email_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login/h1.dart';

class OT extends StatefulWidget {
  final String verficationIDData;
  const OT({super.key, required this.verficationIDData});

  @override
  State<OT> createState() => _LoginState();
}

class _LoginState extends State<OT> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String? otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          OtpTextField(
            numberOfFields: 6,
            onSubmit: ((value) {
              otp = value;

              setState(() {});
            }),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 330, height: 50),
            child: ElevatedButton(
                onPressed: () async {
                  log(widget.verficationIDData.toString());
                  log(otp.toString());
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: widget.verficationIDData, smsCode: otp!);
                  log(widget.verficationIDData.toString());
                  log(otp.toString());
                  auth.signInWithCredential(credential).then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => H()),
                    );
                  }).onError((error, stackTrace) {
                    log(error.toString());
                  });
                },
                child: Text("Sign In")),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(child: Text('     Resend OTP')),
        ],
      ),
    );
  }
}
