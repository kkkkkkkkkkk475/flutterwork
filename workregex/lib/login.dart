import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/forgetpassword.dart';
import 'package:workregex/mobile.dart';
import 'package:workregex/otp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController phonenumbercontroller = TextEditingController();
  // TextEditingController otpcontroller = TextEditingController();
  // bool otpsent = false;
  // final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // String? verificationIdData;

  @override
  // void initState() {
  //   super.initState();
  //   phonenumbercontroller.text = "7878593167";
  // }

  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  "Login to your account",
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
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      obscureText: !isvisible,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                          child: !isvisible
                              ? Icon(
                                  Icons.visibility_outlined,
                                  color: Color(0xFF323232),
                                )
                              : Icon(
                                  Icons.visibility_off_outlined,
                                  color: Color(0xFF323232),
                                ),
                        ),
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
                        hintText: "Enter Password",
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ));
                    },
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFF0202)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 54,
                ),
                Center(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 54, width: 350),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Otp(),
                            ));
                        // print('+91${phonenumbercontroller.text}');
                        // await firebaseAuth
                        //     .verifyPhoneNumber(
                        //   phoneNumber: '+91${phonenumbercontroller.text}',
                        //   verificationCompleted:
                        //       (PhoneAuthCredential credential) {},
                        //   verificationFailed: (FirebaseAuthException e) {},
                        //   codeSent: (String verificationId, int? resendToken) {
                        //     setState(() {
                        //       (verificationIdData.toString());
                        //       verificationIdData = verificationId;
                        //       debugPrint(verificationIdData);
                        //       debugPrint(verificationId);

                        //       otpsent = true;
                        //     });
                        //   },
                        //   codeAutoRetrievalTimeout: (String verificationId) {},
                        // )
                        //     .onError((error, stackTrace) {
                        //   (error.toString());
                        // });
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
                                builder: (context) => CreateAccountScreen(),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
