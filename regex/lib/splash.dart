import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:regex/list_ui_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex/login_screen.dart';
import 'package:regex/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String text = 'Go to Login';
  List<File> file = [];

  getImage() async {
    print(file);
    await ImagePicker().getImage(source: ImageSource.gallery).then((value) {
      setState(() {
        file.add(File(value!.path));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 105,
          width: double.infinity,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                  height: 52,
                  width: 167,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Container(
                  height: 52,
                  width: 167,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
            ),
          ]),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/splash_background.png'))),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Image.asset(
                    'assets/box.png',
                    height: 38,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'photo',
                      style: GoogleFonts.comfortaa(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ]),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.suZlmdLALz9i3ibbl5XXeQHaLH?pid=ImgDet&rs=1'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Pawel Czerwinski',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '@pawel_czerwinski',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
