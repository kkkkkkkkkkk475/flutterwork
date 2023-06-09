import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/create_account.dart';
import 'package:workregex/create_new_password.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:const BackButton(
            color: Color(0xff303030),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            'Verification',
            style: GoogleFonts.roboto(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color:const Color(0xff303030)),
          ),
       const   SizedBox(
            height: 56,
          ),
          Text(
            'Enter Verification Code',
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color:const Color(0xff303030)),
          ),
       const   SizedBox(
            height: 32,
          ),
          PinCodeFields(
            fieldHeight: 48,
            fieldWidth: 40,
            keyboardType: TextInputType.number,
            activeBackgroundColor: Color(0xffC2B8B8),
            fieldBackgroundColor: Color(0xffC2B8B8),
            length: 6,
            onComplete: (String value) {
              setState(() {});
            },
          ),
       const   SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "If you didn't receive a code!",
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
                          builder: (context) =>const CreateAccountScreen(),
                        ));
                  },
                  child: Text(
                    "RESEND",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:const Color(0xFFFF0202)),
                  ),
                ),
              )
            ],
          ),
       const   SizedBox(
            height: 24,
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  height: 54, width: MediaQuery.of(context).size.width),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const CreateNewPasswordScreen(),
                      ));
                },
                // ignore: sort_child_properties_last
                child: Text(
                  'VERIFY',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 175, 15, 4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(69))),
              ),
            ),
          ),
        ]),
     ),
);
}
}