
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workregex/blood_donation_1.dart';

class BloodDonationScreen extends StatefulWidget {
  const BloodDonationScreen({super.key});

  @override
  State<BloodDonationScreen> createState() => _BloodDonationScreenState();
}

class _BloodDonationScreenState extends State<BloodDonationScreen> {
  // ignore: non_constant_identifier_names
  List  blood_donation = [
    {
      "title": "Blood Donation Center",
      "place": "Jodhpur",
      "Hospital": "Varun Hospital",
      "Time": "08 AM - 04 PM"
    },
    {
      "title": "Blood Donation Center",
      "place": "Jodhpur",
      "Hospital": "Varun Hospital",
      "Time": "08 AM - 04 PM"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Blood Donation",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor:const Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(
              height: 16,
            ),
            Text(
              "Nearest blood centre",
              style: GoogleFonts.roboto(
                  color: Color(0xff706464),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
        const    SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: blood_donation.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const BloodDonation1(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  blood_donation[index]["title"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff473D3D)),
                                ),
                                Text(
                                  blood_donation[index]["place"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color:const Color(0xff473D3D)),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  blood_donation[index]["Hospital"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:const Color(0xff706464)),
                                ),
                                Text(
                                  blood_donation[index]["Time"],
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:const Color(0xff706464)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
   ),
);
}
}