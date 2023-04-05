import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // ignore: sort_child_properties_last
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/box.png',
                    height: 30,
                  ),
                  Text(
                    'photo',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/box.png',
                      height: 20,
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
                  ],
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/splash_background.png',
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
 