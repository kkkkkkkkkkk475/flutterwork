import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login/otp.dart';

class L extends StatefulWidget {
  const L({super.key, required String title});

  @override
  State<L> createState() => _LState();
}

class _LState extends State<L> {
  // FirebaseUser? _user;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String? verficationIDData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10, right: 250),
            child: Text(
              'LOGIN',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 70, right: 100),
            child: Text(
              'WLE COME BACK          ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: TextField(
                              keyboardType: TextInputType.number,
                              controller: phoneNumberController,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  Mobile Number",
                                  hintStyle: TextStyle(color: Colors.black))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(height: 50, width: 340),
                    child: ElevatedButton(
                      onPressed: () async {
                        await auth
                            .verifyPhoneNumber(
                              phoneNumber: '+91${phoneNumberController.text}',
                              verificationFailed: (FirebaseAuthException e) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: Text('Error hai sahi karo'),
                                    );
                                  },
                                );
                                if (e.code == 'invalid-phone-number') {
                                  log('The provided phone number is not valid.');
                                }
                              },
                              codeAutoRetrievalTimeout:
                                  (String verificationId) {},
                              codeSent: (String verificationId,
                                  int? forceResendingToken) async {
                                setState(() {
                                  verficationIDData = verificationId;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OT(
                                              verficationIDData:
                                                  verficationIDData!,
                                            )),
                                  );
                                });
                              },
                              verificationCompleted:
                                  (PhoneAuthCredential phoneAuthCredential) {
                                log(phoneAuthCredential.providerId);
                              },
                            )
                            .then((value) {})
                            .onError((error, stackTrace) {});
                      },
                      child: const Text("LOGIN"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.orange),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Continue With Social Media'),
                  const SizedBox(
                    height: 35,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 60, width: 130),
                        child: ElevatedButton(
                          onPressed: () {
                            _handleSignIn();
                          },
                          child: const Text(
                            'Google Signin',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 60, width: 135),
                        child: ElevatedButton(
                          onPressed: () {
                            _handleSignIn();
                          },
                          child: const Text(
                            'Facebook Signin',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70))),
          ),
        ],
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      // _auth.signOut();
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? _user = authResult.user;
      assert(!_user!.isAnonymous);
      User currentUser = _auth.currentUser!;
      assert(_user!.uid == currentUser.uid);
      print("User Name: ${_user!.displayName}");
      print("User Email ${_user.email}");
    } catch (error) {
      print(error);
    }
  }
}
