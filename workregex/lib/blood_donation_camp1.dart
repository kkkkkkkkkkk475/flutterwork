
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/blood_donation_camp_2.dart';

class BloodDonationCamp1 extends StatefulWidget {
  const BloodDonationCamp1({super.key});

  @override
  State<BloodDonationCamp1> createState() => _BloodDonationCamp1State();
}

class _BloodDonationCamp1State extends State<BloodDonationCamp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blood Donation Camp",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor:const Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.notifications_none))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const   SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const BloodDonationCamp2(),
                    ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const    SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Blood Donation Camp",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color:const Color(0xff473D3D)),
                          ),
                          Text(
                            "Jodhpur",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color:const Color(0xff473D3D)),
                          )
                        ],
                      ),
                    const  SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Varun Hospital",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color:const Color(0xff706464)),
                          ),
                          Text(
                            "08 AM - 04 PM",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color:const Color(0xff706464)),
                          )
                        ],
                      ),
                   const   SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          const  SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const BloodDonationCamp2(),
                    ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const  SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Blood Donation Camp",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color:const Color(0xff473D3D)),
                          ),
                          Text(
                            "Jodhpur",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff473D3D)),
                          )
                        ],
                      ),
                   const   SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Varun Hospital",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color:const Color(0xff706464)),
                          ),
                          Text(
                            "08 AM - 04 PM",
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color:const Color(0xff706464)),
                          )
                        ],
                      ),
                   const   SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
     ),
);}
}