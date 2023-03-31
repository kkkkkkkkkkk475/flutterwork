import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/email_verify_karo.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/mobile.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key, required String title});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool otpsent = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 216, 244),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/—Pngtree—shopping logo design_1477516.png'),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    controller: emailIdController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enput Email',
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 132, 231, 75)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Input Password',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 132, 231, 75)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login whit??',
                      style: TextStyle(fontSize: 17),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mobiles(),
                            ));
                      },
                      child: Text(
                        ' Mobile Number',
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 50, width: 330),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (emailIdController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Email")));
                      }
                      if (passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("Password")));
                      }
                      firebaseAuth
                          .signInWithEmailAndPassword(
                              email: emailIdController.text,
                              password: passwordController.text)
                          .then((value) {
                        if (!value.user!.emailVerified) {
                          value.user!.sendEmailVerification();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => EmailVerifyKaro())));
                        }
                      }).onError((error, stackTrace) {
                        firebaseAuth
                            .createUserWithEmailAndPassword(
                                email: emailIdController.text,
                                password: passwordController.text)
                            .then((value) {
                          if (!value.user!.emailVerified) {
                            value.user!.sendEmailVerification();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => EmailVerifyKaro())));
                          }
                        });
                      });
                    },
                    child: Text('Create user'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 85, 247, 93)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
