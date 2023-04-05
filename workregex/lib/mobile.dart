import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/forgetpassword.dart';
import 'package:workregex/otp.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Color(0xff303030)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Create your account',
              style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff303030)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Enter your mobile number to get started',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff667685)),
            ),
            SizedBox(
              height: 56,
            ),
            Center(
              child: Container(
                height: 46,
                width: 350,
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'IN',
                      favorite: ['+91', 'IN'],
                      // countryFilter: ['IN', 'IN'],
                    ),
                    // if (!otpsent)
                    SizedBox(
                      width: 220,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mobile number',
                            hintStyle: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff303030))),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(41)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                  child: Text(
                    'ForgetPassword?',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
            SizedBox(
              height: 122,
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
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667685)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Otp(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF0202)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 230,
            ),
            Center(
              child: Text(
                'By creating an account, I agree to the\nTerms & Conditions and Privacy Policy',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
