import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:regex/auth/models/user_models.dart';
import 'package:regex/home_page.dart';
import 'package:regex/shared_pref.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool otpSent = false;

  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  UserSignupModel? userSignupModel;
  String? verficationID;

  GoogleSignIn _googleSignIn = GoogleSignIn();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Map<String, dynamic> json = {
    "name": "Govind",
    "email": "govind@gmail.com",
    "password": "hdsj",
    "dob": "j652357645723",
    "address": {
      "city": "Jaipur",
      "state": "Rajasthan",
      "country": "India",
      "pincode": 302020
    }
  };

  @override
  void initState() {
    print(users.toString());

    userSignupModel = UserSignupModel.fromJson({
      "name": "Govind",
      "email": "govind@gmail.com",
      "password": "hdsj",
      "dob": "j652357645723",
      "address": {
        "city": "Jaipur",
        "state": "Rajasthan",
        "country": "India",
        "pincode": 302020
      }
    });
    setState(() {});
    super.initState();
  }

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
          Text(userSignupModel?.name ?? ''),
          Text(json['name']),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Log in',
              style: GoogleFonts.comfortaa(
                  fontSize: 36, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          otpSent == false
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: phoneController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      hintText: '9876543210',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    controller: otpController,
                    maxLength: 6,
                    onChanged: (v) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
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
              onTap: () async {
                users.get().then((value) async {
                  try {
                    if (otpSent == false) {
                      if (phoneController.text.length < 10) {
                        return;
                      }
                      await firebaseAuth.verifyPhoneNumber(
                        phoneNumber: '+91 ${phoneController.text}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          setState(() {
                            otpSent = true;

                            verficationID = verificationId;
                          });
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } else {
                      if (otpController.text.length < 6) {
                        return;
                      }

                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: verficationID!,
                              smsCode: otpController.text);

                      // Sign the user in (or link) with the credential
                      UserCredential userCredential =
                          await firebaseAuth.signInWithCredential(credential);
                      print(userCredential.credential?.token);

                      SharedPref.setUserCredientials(
                          userCredential.user?.phoneNumber ?? '',
                          (userCredential.credential?.token ?? '').toString());

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MyHomePageScreen()));
                    }
                  } catch (e) {
                    users.add({
                      'name': 'xyz',
                      'mobile': phoneController.text,
                      'address': [
                        {'city': 'jaipur'}
                      ]
                    });
                    print(e.toString());
                  }
                });
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () async {
                _handleSignIn();
              },
              child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google.png',
                        height: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Google Sign-in',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      if (await _googleSignIn.isSignedIn()) {
        _googleSignIn.signOut();
      }
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      print(googleSignInAccount?.email);
      print(googleSignInAccount?.displayName);
      print(googleSignInAccount?.photoUrl);

      print((await googleSignInAccount?.authentication)?.accessToken);
    } catch (error) {
      print(error);
    }
  }
}
