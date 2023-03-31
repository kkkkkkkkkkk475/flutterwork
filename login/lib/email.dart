import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required String title});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final _auth = FirebaseAuth.instance;

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child: Text("Login",
                style: GoogleFonts.roboto(fontWeight: FontWeight.w500))),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                          hintText: "Email",
                          hintStyle: GoogleFonts.roboto()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter email";
                        } 
                        // else if (!value.isValidEmail())
                          return "Enter correct email";
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      obscureText: !isVisible,
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: !isVisible
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                          prefixIcon: Icon(Icons.lock_outlined),
                          hintText: "Password",
                          hintStyle: GoogleFonts.roboto()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter password";
                        } 
                        // else if (!value.isValidPassword())
                          return "Enter correct password";
                        return null;
                      },
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 340, height: 50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                onPressed: () {
                  setState(() {});
                  if (_formKey.currentState!.validate())
                    // ignore: curly_braces_in_flow_control_structures
                    _auth
                        .signInWithEmailAndPassword(
                            email: emailcontroller.text.toString(),
                            password: passwordcontroller.text.toString())
                        .then((value) {
                      if (value.user != null) {
                        SharedPref().setUserUid(value.user!.uid);
                        if (!value.user!.emailVerified) {
                          value.user!
                              .sendEmailVerification()
                              .then((value) {})
                              .onError((error, stackTrace) {
                            log(error.toString());
                          });
                       
                        } else {
                        
                        }
                      }
                      log(value.user?.email ?? '');
                    }).onError((error, stackTrace) {
                      if (error
                          .toString()
                          .contains('[firebase_auth/user-not-found]')) {
                        _auth
                            .createUserWithEmailAndPassword(
                                email: emailcontroller.text.toString(),
                                password: passwordcontroller.text.toString())
                            .then((value) {
                          if (value.user != null) {
                            SharedPref().setUserUid(value.user!.uid);
                            value.user!
                                .sendEmailVerification()
                                .then((value) {})
                                .onError((error, stackTrace) {
                              log(error.toString());
                            });

                         
                          }
                        });
                      }
                      log(error.toString());
                    });
                  return;
                },
                child: Text(
                  "Log In",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ),
          
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: () {
              
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("Login With PhoneNumber"),
                ),
              ),
            ),
          )
        ],
     ),
);
}
}

class SharedPref {
  void setUserUid(String uid) {}
}