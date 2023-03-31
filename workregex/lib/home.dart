import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workregex/profile.dart';
import 'package:workregex/bottomn.dart';
import 'Complete_profile.dart';
import 'DonationScreen.dart';
import 'mobile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images = [
    "assets/wp4323509-blood-donation-wallpapers.jpg",
    "assets/wp4323470-blood-donation-wallpapers.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        width: 250,
        child: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 11),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'assets/wp4323528-blood-donation-wallpapers.jpg'),
                        ),
                        Column(
                          children: [
                            Text(
                              '    Vikash Sharma',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '963258740             ',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: Divider(
                        color: Colors.black,
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.manage_accounts_outlined,
                        color: Color(0xffBF222B),
                      ),
                      label: Text(
                        'Profile',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff303030)),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.history,
                        color: Color(0xffBF222B),
                      ),
                      label: Text(
                        'Donation history',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active,
                        color: Color(0xffBF222B),
                      ),
                      label: Text(
                        'Notification',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_work_outlined,
                        color: Color(0xffBF222B),
                      ),
                      label: Text(
                        'About NGO',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: Divider(
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
