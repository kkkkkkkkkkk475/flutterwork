import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 52,
                width: 167,
                child: Center(
                    child: Text(
                  'LOG IN',
                  style: GoogleFonts.roboto(
                      fontSize: 13, fontWeight: FontWeight.w900),
                )),
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 52,
                width: 167,
                child: Center(
                    child: Text(
                  'register'.toUpperCase(),
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                )),
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Group 3 (1).png',
                      height: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'photo',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/Group 3 (1).png',
                        height: 35,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('SFHGJHGSEJHFGSFJHHFSH'),
                          Text('SFHGJHGSEJHFGSFJHHFSH'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Rectangle (1).png'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
