import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/bloodAvailabilitySearch%20.dart';

import 'NGOaCTIVE.dart';
import 'BecomeVolunteerScreen.dart';
import 'BloodDonationCampScreen.dart';
import 'BloodDonationScreen.dart';
import 'DonationScreen.dart';
import 'notification.dart';

class NgoProgramScreen extends StatefulWidget {
  const NgoProgramScreen({super.key});

  @override
  State<NgoProgramScreen> createState() => _NgoProgramScreenState();
}

class _NgoProgramScreenState extends State<NgoProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        title: Text(
          "NGO Program",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Noti(),
                    ));
              },
              icon: Icon(Icons.notifications_none))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Image.asset("assets/Rectangle 31.png"),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => B(),
                        ));
                  },
                  child: Container(
                    height: 97,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xffBF222B),
                        ),
                        Text(
                          "Blood Availability\nSearch",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BecomeVolunteerScreen(),
                        ));
                  },
                  child: Container(
                    height: 97,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.manage_accounts_outlined,
                          color: Color(0xffBF222B),
                        ),
                        Text(
                          "Become a\nVolunteer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NgoActivityScreen(),
                        ));
                  },
                  child: Container(
                    height: 97,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_library_outlined,
                          color: Color(0xffBF222B),
                        ),
                        Text(
                          "NGO Activity",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DonationScreen(),
                        ));
                  },
                  child: Container(
                    height: 97,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bloodtype,
                          color: Color(0xffBF222B),
                        ),
                        Text(
                          "Bood\nDonation",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BloodDonationCampScreen(),
                        ));
                  },
                  child: Container(
                    height: 97,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.campaign,
                          color: Color(0xffBF222B),
                        ),
                        Text(
                          "Blood Donation\nCamp",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
